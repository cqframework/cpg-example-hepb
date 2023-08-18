Instance: HepBAdultForecastingPD
InstanceOf: PlanDefinition
Usage: #example
Title: "Immunization Forecasting of Hepatitis B Vaccine for Adults >= 18 Years of Age"
* insert DefinitionMetadata(PlanDefinition, HepBAdultForecastingPD)
* insert HepBRelatedArtifacts
* name = "HepBAdultForecastingPD"
* type = $plan-definition-type#eca-rule "ECA Rule"
* description = "If an adult patient has not been immunized for Hep B and is indicated for a Hep B vaccine, providers should administer according to this forecast."
* useContext
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#384810002 "Immunization/vaccination management (procedure)"
* purpose = "Example artifact implementation of CDC ACIP Hep B vaccination guidelines for adults, 18 years and older, who have not yet been immunized."
* library = Canonical(HepBAdultForecasting)
* action
  * title = "Hep B Immunization Forecast"
  * description = "Vaccinate Adult with specified Hep B forecast, if noted"
  * documentation
    * type = #documentation
    * display = "Immunization Calculation Engine - Hep B 2-dose Adult Series"
    * url = $immunization-calculation-engine
  * trigger
    * type = #named-event
    * name = "patient-view"
  * condition
    * kind = #applicability
    * expression
      * description = "Is a Hep B Adult Recommendation Available?"
      * language = #text/cql
      * expression = "Patient Hep B Immunization History should be Evaluated in Adult Series"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * dynamicValue[0]
    * path = "action.title"
    * expression
      * language = #text/cql
      * expression = "Get Recommendation Overview"
  * dynamicValue[+]
    * path = "action.description"
    * expression
      * language = #text/cql
      * expression = "Get Recommendation Detail"
  * action[0].description = "Will Follow Recommendations Provided by This Forecast"
  * action[+].description = "Will not immunize due to contraindication(s) or other medical risk factors"
  * action[+].description = "Will not immunize due to patient preferences"
  * action[+].description = "N/A - see comment (will be reviewed by medical director)"
    //"TODO: How do we indicate through the response that a comment must be captured?"
    // "TODO: How do we communicate the response back to the CDS service for persistence?"