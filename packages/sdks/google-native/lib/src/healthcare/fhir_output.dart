// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about the FHIR store to write the output to.
class FhirOutput {
  /// Name of the output FHIR store, which must already exist. You must grant the healthcare.fhirResources.update permission on the destination store to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/healthcare/docs/how-tos/permissions-healthcare-api-gcp-products#the_cloud_healthcare_service_agent). The destination store must set enableUpdateCreate to true. The destination store must use FHIR version R4. Writing these resources will consume FHIR operations quota from the project containing the source data. De-identify operation metadata is only generated for DICOM de-identification operations.
  final pulumi.Input<String>? fhirStore;

  /// Creates a new [FhirOutput].
  /// [fhirStore] Name of the output FHIR store, which must already exist. You must grant the healthcare.fhirResources.update permission on the destination store to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/healthcare/docs/how-tos/permissions-healthcare-api-gcp-products#the_cloud_healthcare_service_agent). The destination store must set enableUpdateCreate to true. The destination store must use FHIR version R4. Writing these resources will consume FHIR operations quota from the project containing the source data. De-identify operation metadata is only generated for DICOM de-identification operations.
  FhirOutput({
    this.fhirStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirStore': ?fhirStore,
    };
  }

  factory FhirOutput.fromMap(Map<String, dynamic> map) {
    return FhirOutput(
      fhirStore: map['fhirStore'] == null ? null : (map['fhirStore']! as String).input(),
    );
  }
}

