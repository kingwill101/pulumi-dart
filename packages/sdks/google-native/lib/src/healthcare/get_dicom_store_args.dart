// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_dicom_store_args_doc}
/// Arguments for getDicomStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_dicom_store_args_doc}
class GetDicomStoreArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> dicomStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDicomStoreArgs].
  /// [datasetId] Required.
  /// [dicomStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetDicomStoreArgs({
    required this.datasetId,
    required this.dicomStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'dicomStoreId': dicomStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDicomStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreArgs(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      dicomStoreId: pulumi.Input.fromValue(map['dicomStoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

