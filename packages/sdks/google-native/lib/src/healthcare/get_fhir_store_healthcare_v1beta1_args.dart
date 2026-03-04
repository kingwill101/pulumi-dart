// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_fhir_store_healthcare_v1beta1_args_doc}
/// Arguments for getFhirStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_fhir_store_healthcare_v1beta1_args_doc}
class GetFhirStoreHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFhirStoreHealthcareV1beta1Args].
  /// [datasetId] Required.
  /// [fhirStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFhirStoreHealthcareV1beta1Args({
    required this.datasetId,
    required this.fhirStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'fhirStoreId': fhirStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFhirStoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreHealthcareV1beta1Args(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      fhirStoreId: pulumi.Input.fromValue(map['fhirStoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
