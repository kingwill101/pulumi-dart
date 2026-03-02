// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_metadata_store_encryption_spec.dart';

/// {@template pulumi_vertex_ai_metadata_store_ai_metadata_store_args_doc}
/// The set of arguments for AiMetadataStore.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_metadata_store_ai_metadata_store_args_doc}
class AiMetadataStoreArgs {
  /// Description of the MetadataStore.
  final pulumi.Input<String>? description;
  /// Customer-managed encryption key spec for a MetadataStore. If set, this MetadataStore and all sub-resources of this MetadataStore will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiMetadataStoreEncryptionSpec>? encryptionSpec;
  /// The name of the MetadataStore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Metadata Store. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiMetadataStoreArgs].
  /// [description] Description of the MetadataStore.
  /// [encryptionSpec] Customer-managed encryption key spec for a MetadataStore. If set, this MetadataStore and all sub-resources of this MetadataStore will be secured by this key.
  /// [name] The name of the MetadataStore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Metadata Store. eg us-central1
  AiMetadataStoreArgs({
    this.description,
    this.encryptionSpec,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiMetadataStoreEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiMetadataStoreArgs.fromMap(Map<String, dynamic> map) {
    return AiMetadataStoreArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptionSpec: map['encryptionSpec'] == null ? null : (AiMetadataStoreEncryptionSpec.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

