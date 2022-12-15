/*

Exammples of https://www.hl7.org/fhir/references.html

*/

Instance: ThePatientReferencesInLine
InstanceOf: Reference
Usage: #inline
Title: "Example-Patient References"
Description: "Patient References"
* reference = "http://acme.com/Patient/Patient-1234"
* display = "the Patient"
* id = "Patient-1234"

Instance: ThePatient-References
InstanceOf: Patient
Usage: #example
Title: "Example-Patient References"
Description: "Patient References"
* id = "ThePatient-References-1234"


Instance: TheCondition-References0
InstanceOf: Condition
Usage: #example
Title: "Example-TheCondition-References0/Subject"
Description: "TheCondition-References"
* id = "NEW-Condition0"
* subject = Reference(ThePatient-References)


Instance: TheCondition-References1
InstanceOf: Condition
Usage: #example
Title: "Example-Condition1/Subject References"
Description: "Condition1/Subject References"
* id = "NEW-Condition-References1"
* subject = Reference(http://acme.com/Patient/Patient-1234)


Instance: TheProcedure-References0
InstanceOf: Procedure
Usage: #example
Title: "Example-Procedure0/Subject References"
Description: "Procedure0/Subject References"
* status = #active
* id = "NEW-Procedure-References0"
* subject = Reference(http://acme.com/Patient/Patient-1234)

Instance: TheProcedure1
InstanceOf: Procedure
Usage: #example
Title: "Example-Procedure1/Subject Reference"
Description: "Procedur1/subject Reference"
* status = #active
* id = "NEW-Procedure-References1"
* subject = ThePatientReferencesInLine
