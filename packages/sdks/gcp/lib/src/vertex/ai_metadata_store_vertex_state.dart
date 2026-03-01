// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_metadata_store_encryption_spec.dart';
import 'ai_metadata_store_state.dart';

/// Input properties used for looking up and filtering AiMetadataStore resources.
class AiMetadataStoreVertexState {
  /// The timestamp of when the MetadataStore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
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
  /// State information of the MetadataStore.
  /// Structure is documented below.
  final pulumi.Input<List<AiMetadataStoreState>>? states;
  /// The timestamp of when the MetadataStore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiMetadataStoreVertexState].
  /// [createTime] The timestamp of when the MetadataStore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [description] Description of the MetadataStore.
  /// [encryptionSpec] Customer-managed encryption key spec for a MetadataStore. If set, this MetadataStore and all sub-resources of this MetadataStore will be secured by this key.
  /// [name] The name of the MetadataStore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Metadata Store. eg us-central1
  /// [states] State information of the MetadataStore.
  /// [updateTime] The timestamp of when the MetadataStore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  AiMetadataStoreVertexState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<AiMetadataStoreEncryptionSpec>? encryptionSpec,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<List<AiMetadataStoreState>>? states,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionSpec = pulumi.Input.asOptionalInput<AiMetadataStoreEncryptionSpec>(encryptionSpec),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      states = pulumi.Input.asOptionalInput<List<AiMetadataStoreState>>(states),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiMetadataStoreEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'states': ?pulumi.Input.mapOptionalInputValue<List<AiMetadataStoreState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<AiMetadataStoreState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory AiMetadataStoreVertexState.fromMap(Map<String, dynamic> map) {
    return AiMetadataStoreVertexState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<AiMetadataStoreEncryptionSpec>(AiMetadataStoreEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      states: map['states'] == null ? null : pulumi.Output.create<List<AiMetadataStoreState>>(pulumi.Input.decodeList<AiMetadataStoreState>(map['states'], (value) => AiMetadataStoreState.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

