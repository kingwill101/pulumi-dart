// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_fhir_args_doc}
/// Arguments for getFhir.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_fhir_args_doc}
class GetFhirArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirId;
  final pulumi.Input<String> fhirId1;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFhirArgs].
  /// [datasetId] Required.
  /// [fhirId] Required.
  /// [fhirId1] Required.
  /// [fhirStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFhirArgs({
    required this.datasetId,
    required this.fhirId,
    required this.fhirId1,
    required this.fhirStoreId,
    required this.location,
    this.project,
  });

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

  factory GetFhirArgs.fromMap(Map<String, dynamic> map) {
    return GetFhirArgs(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      fhirId: pulumi.Input.fromValue(map['fhirId'] as String),
      fhirId1: pulumi.Input.fromValue(map['fhirId1'] as String),
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
