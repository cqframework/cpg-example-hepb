Instance: HepBAdultForecasting
InstanceOf: Library
Usage: #definition
Title: "Logic for Immunization Forecasting of Hepatitis B Vaccine for Adults >= 18 Years of Age"
* insert LibraryMetadata(Library, HepBAdultForecasting)
* insert FHIRRelatedLibraries
* insert HepBRelatedArtifacts
* name = "HepBAdultForecasting"
* type = $library-type#logic-library "Logic Library"
* description = "If an adult patient has not been immunized for Hep B and is indicated for a Hep B vaccine, providers should administer according to this forecast."
* purpose = "Example artifact implementation of CDC ACIP Hep B vaccination guidelines for adults, 18 years and older, who have not yet been immunized."
* relatedArtifact[+]
  * type = #depends-on
  * resource = $cvx
* relatedArtifact[+]
  * type = #depends-on
  * resource = Canonical(immunization-evaluation-dose-status)
* relatedArtifact[+]
  * type = #depends-on
  * resource = $all-hepb-vaccines
* parameter[0]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #PatientBirthDate
  * use = #out
  * min = 0
  * max = "1"
  * type = #date
* parameter[+]
  * name = #"Age in Days when Patient is 18 Years minus 4 Days"
  * use = #out
  * min = 0
  * max = "1"
  * type = #integer
* parameter[+]
  * name = #"Patient is 18 Years Minus 4 Days or Older"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"No Hep B Shots were Administered before 18 Years minus 4 Days of Age"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Hep B Vaccine, Adjuvanted Immunization"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Immunization
* parameter[+]
  * name = #"First Valid Hep B Adjuvanted Adult Dose"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Immunization
* parameter[+]
  * name = #"There Exists a Valid First Hep B Adjuvanted Dose"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"There Exists a Valid Second Hep B Adjuvanted Dose"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Patient Hep B Immunization History should be Evaluated in Adult Series"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Get Recommendation Overview"
  * use = #out
  * min = 0
  * max = "1"
  * type = #string
* parameter[+]
  * name = #"A Forecast for Hep B Adult Dose 1 Should be Made"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"A Forecast for Hep B Adult Dose 2 Should be Made"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Most Recent Hep B Adjuvanted Administration Date"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Any
* parameter[+]
  * name = #"Patient has Completed the Hep B Adult Series"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Get Recommendation Detail"
  * use = #out
  * min = 0
  * max = "1"
  * type = #string
* parameter[+]
  * name = #"Second Valid Hep B Adjuvanted Adult Dose"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Immunization
* dataRequirement[0]
  * type = #Immunization
  * profile = Canonical(Immunization)
  * codeFilter
    * path = "vaccineCode"
    * valueSet = $all-hepb-vaccines
* dataRequirement[+]
  * type = #Immunization
  * profile = Canonical(Immunization)
  * codeFilter
    * path = "vaccineCode"
    * code = $cvx#189
* content.id = "ig-loader-HepBAdultForecasting.cql"