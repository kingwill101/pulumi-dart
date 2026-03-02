// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1_get_metadata_import_args_doc}
/// Arguments for getMetadataImport.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1_get_metadata_import_args_doc}
class GetMetadataImportArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataImportId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetMetadataImportArgs].
  /// [location] Required.
  /// [metadataImportId] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetMetadataImportArgs({
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

  factory GetMetadataImportArgs.fromMap(Map<String, dynamic> map) {
    return GetMetadataImportArgs(
      location: (map['location'] as String).input(),
      metadataImportId: (map['metadataImportId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceId: (map['serviceId'] as String).input(),
    );
  }
}

