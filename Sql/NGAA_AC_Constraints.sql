CREATE UNIQUE INDEX "UNIQUE_APPBOLTONTYPEGROUPLIST" ON "NGAA_APPBOLTONTYPEGROUPLIST"(CASE  WHEN ("ENDDATE" IS NULL) THEN "APPBOLTONTYPEGROUPID" ELSE NULL END, CASE  WHEN ("ENDDATE" IS NULL) THEN "STARTDATE" ELSE NULL END);
CREATE UNIQUE INDEX "UNIQUE_DESTTYPEASSOTARIFFCLASS" ON "NGAA_DESTTYPEASSOTARIFFCLASS"(CASE  WHEN ("ENDDATE" IS NULL) THEN "TARIFFCLASSCODE" ELSE NULL END, CASE  WHEN ("ENDDATE" IS NULL) THEN "DESTTYPEID" ELSE NULL END, CASE  WHEN ("ENDDATE" IS NULL) THEN "STARTDATE" ELSE NULL END);
CREATE UNIQUE INDEX "UNIQUE_NX24APPBOLTONTYPE" ON "NGAA_NX24APPBOLTONTYPE"(CASE  WHEN ("ENDDATE" IS NULL) THEN "NX24APPBOLTONTYPELISTID" ELSE NULL END, CASE  WHEN ("ENDDATE" IS NULL) THEN "TYPEOFDAYID" ELSE NULL END, CASE  WHEN ("ENDDATE" IS NULL) THEN "STARTDATE" ELSE NULL END);
CREATE UNIQUE INDEX "UNIQUE_NX24APPBOLTONTYPELIST" ON "NGAA_NX24APPBOLTONTYPELIST" (CASE  WHEN ("ENDDATE" IS NULL) THEN "NX24APPBOLTONTYPELISTID" ELSE NULL END, CASE  WHEN ("ENDDATE" IS NULL) THEN "STARTDATE" ELSE NULL END);
CREATE UNIQUE INDEX "UNIQUE_NGAAPROJECTASSIGNMENT" ON "NGAA_PROJECTASSIGNMENT"("OBJECTID", "OBJECTTYPE", "PROJECTCODE");
CREATE UNIQUE INDEX "UNIQUE_PASSIGNMENTORDERNUM" ON "NGAA_PROJECTASSIGNMENT"("ORDERNUM");