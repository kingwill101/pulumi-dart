// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_metadata_schema_args_doc}
/// Arguments for getMetadataSchema.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_metadata_schema_args_doc}
class GetMetadataSchemaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataSchemaId;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetadataSchemaArgs].
  /// [location] Required.
  /// [metadataSchemaId] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetMetadataSchemaArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> metadataSchemaId,
    required pulumi.Output<String> metadataStoreId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      metadataSchemaId = pulumi.Input.asInput<String>(metadataSchemaId),
      metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'metadataSchemaId': metadataSchemaId,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetMetadataSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      metadataSchemaId: pulumi.Output.create<String>(map['metadataSchemaId'] as String),
      metadataStoreId: pulumi.Output.create<String>(map['metadataStoreId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

