// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1beta_get_metadata_import_metastore_v1beta_args_doc}
/// Arguments for getMetadataImport.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1beta_get_metadata_import_metastore_v1beta_args_doc}
class GetMetadataImportMetastoreV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataImportId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetMetadataImportMetastoreV1betaArgs].
  /// [location] Required.
  /// [metadataImportId] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetMetadataImportMetastoreV1betaArgs({
    required this.location,
    required this.metadataImportId,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'metadataImportId': metadataImportId,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetMetadataImportMetastoreV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMetadataImportMetastoreV1betaArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      metadataImportId: pulumi.Input.fromValue(
        map['metadataImportId'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
