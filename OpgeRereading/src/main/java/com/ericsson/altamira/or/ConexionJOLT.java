package com.ericsson.altamira.or;

import bea.jolt.JoltRemoteService;
import bea.jolt.JoltSession;
import bea.jolt.JoltSessionAttributes;
import bea.jolt.JoltTransaction;
import bea.jolt.ServiceException;

public class ConexionJOLT {

    public static int llamaServicio(String servicio, String[] in_params, String[] in_valores,
    		String maquina, String puerto, String usuario, String rol, String pass_usuario, String pass_aplicacion, String timeout)
    				throws Exception  {
    	
        JoltSession sesion = null;
        JoltTransaction trans = null;

        try {
        	
            JoltSessionAttributes atributos = new JoltSessionAttributes();

            // Enlaza el cliente al entorno BEA Tuxedo
            atributos.setString(JoltSessionAttributes.APPADDRESS, "//" + maquina + ":" + puerto);

            // El cliente se loguea en BEA Tuxedo
            sesion = new JoltSession(atributos, usuario, rol, pass_usuario, pass_aplicacion);

            // Busca los atributos del servicio en el repositorio
            JoltRemoteService servicioRemoto = new JoltRemoteService(servicio, sesion);

            // Añadimos los parametros de entrada y sus valores para el servicio.
            for (int i = 0; i < in_params.length; i++)
                servicioRemoto.addString(servicio + "_" + in_params[i], in_valores[i]);

            // Comienza una nueva transacción Tuxedo
            trans = new JoltTransaction(new Integer(timeout).intValue(), sesion);

            // Ejecuta el servicio BEA Tuxedo
            servicioRemoto.call(trans);

            // Commit de la transacción
            trans.commit();

            // Recupera el resultado
            short resultado = servicioRemoto.getShortDef(servicio + "__rpr_ret", (short) 0);

            // Cerramos la sesion de BEA Tuxedo
            sesion.endSession();

            // Devolvemos el resultado de la operacion
            return resultado;

        } catch (ServiceException e) {
            if (trans != null) {
                // Rollback de la transacción
                trans.rollback();
                sesion.endSession();
            }
            throw e;
        }
    }
}