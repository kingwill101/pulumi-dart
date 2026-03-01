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
    required pulumi.Output<String> location,
    required pulumi.Output<String> metadataImportId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      metadataImportId = pulumi.Input.asInput<String>(metadataImportId),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      metadataImportId: pulumi.Output.create<String>(map['metadataImportId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

