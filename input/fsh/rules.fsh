RuleSet: LibraryMetadata(type, id)
* identifier
  * use = #official
  * value = "{id}"
* status = #active
* experimental = true
* url = "http://cqframework.org/cpg-example-hepb/{type}/{id}"
* topic.text = "Immunization Forecasting"
* author[0].name = "Daryl Chertcoff"
* author[+].name = "Bryn Rhodes"
* useContext
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#384810002 "Immunization/vaccination management (procedure)"

RuleSet: DefinitionMetadata(type, id)
* identifier
  * use = #official
  * value = "{id}"
* status = #draft
* experimental = true
* url = "http://cqframework.org/cpg-example-hepb/{type}/{id}"
* topic.text = "Immunization Forecasting"
* author[0].name = "Daryl Chertcoff"
* author[+].name = "Bryn Rhodes"

RuleSet: FHIRRelatedLibraries
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIRHelpers|4.0.1"

RuleSet: HepBRelatedArtifacts
* relatedArtifact[+]
  * type = #documentation
  * display = "Immunization Calculation Engine - Hep B Vaccine Group - Hep B 2-dose Adult Series"
  * url = $immunization-calculation-engine
* relatedArtifact[+]
  * type = #documentation
  * display = "CDC MMWR Vol.67 / No.1 : Prevention of Hepatitis B Virus Infection in the United States: Recommendations of the Advisory Committee on Immunization Practices"
  * url = $cdc-hepb-prevention
* relatedArtifact[+]
  * type = #documentation
  * display = "April 2018 Recommendations for the use of adjuvanted hepatitis B vaccine (Heplisav-B, Dynavax)"
  * url = $adjuvanted-hepb-vaccine-recommendation