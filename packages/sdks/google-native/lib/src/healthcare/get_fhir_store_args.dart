// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_fhir_store_args_doc}
/// Arguments for getFhirStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_fhir_store_args_doc}
class GetFhirStoreArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFhirStoreArgs].
  /// [datasetId] Required.
  /// [fhirStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFhirStoreArgs({
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

  factory GetFhirStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreArgs(
      datasetId: (map['datasetId'] as String).input(),
      fhirStoreId: (map['fhirStoreId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

