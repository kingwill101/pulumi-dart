// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_fhir_healthcare_v1beta1_args_doc}
/// Arguments for getFhir.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_fhir_healthcare_v1beta1_args_doc}
class GetFhirHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirId;
  final pulumi.Input<String> fhirId1;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFhirHealthcareV1beta1Args].
  /// [datasetId] Required.
  /// [fhirId] Required.
  /// [fhirId1] Required.
  /// [fhirStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFhirHealthcareV1beta1Args({
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> fhirId,
    required pulumi.Output<String> fhirId1,
    required pulumi.Output<String> fhirStoreId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      fhirId = pulumi.Input.asInput<String>(fhirId),
      fhirId1 = pulumi.Input.asInput<String>(fhirId1),
      fhirStoreId = pulumi.Input.asInput<String>(fhirStoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'fhirId': fhirId,
      'fhirId1': fhirId1,
      'fhirStoreId': fhirStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFhirHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFhirHealthcareV1beta1Args(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      fhirId: pulumi.Output.create<String>(map['fhirId'] as String),
      fhirId1: pulumi.Output.create<String>(map['fhirId1'] as String),
      fhirStoreId: pulumi.Output.create<String>(map['fhirStoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

