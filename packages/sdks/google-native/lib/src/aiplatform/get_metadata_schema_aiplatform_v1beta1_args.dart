// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_metadata_schema_aiplatform_v1beta1_args_doc}
/// Arguments for getMetadataSchema.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_metadata_schema_aiplatform_v1beta1_args_doc}
class GetMetadataSchemaAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataSchemaId;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetadataSchemaAiplatformV1beta1Args].
  /// [location] Required.
  /// [metadataSchemaId] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  const GetMetadataSchemaAiplatformV1beta1Args({
    required this.location,
    required this.metadataSchemaId,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'metadataSchemaId': metadataSchemaId,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetMetadataSchemaAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaAiplatformV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      metadataSchemaId: pulumi.Input.fromValue(map['metadataSchemaId'] as String),
      metadataStoreId: pulumi.Input.fromValue(map['metadataStoreId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
