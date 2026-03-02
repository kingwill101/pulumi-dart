// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_encryption_spec.dart';
import 'ai_reasoning_engine_spec.dart';

/// Input properties used for looking up and filtering AiReasoningEngine resources.
class AiReasoningEngineState {
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// The description of the ReasoningEngine.
  final pulumi.Input<String>? description;
  /// The display name of the ReasoningEngine.
  final pulumi.Input<String>? displayName;
  /// Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// If set, this ReasoningEngine and all sub-resources of this ReasoningEngine
  /// will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineEncryptionSpec>? encryptionSpec;
  /// The generated name of the ReasoningEngine, in the format
  /// projects/{project}/locations/{location}/reasoningEngines/{reasoningEngine}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the reasoning engine. eg us-central1
  final pulumi.Input<String>? region;
  /// Optional. Configurations of the ReasoningEngine.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpec>? spec;
  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu"
  /// format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiReasoningEngineState].
  /// [createTime] The timestamp of when the Index was created in RFC3339 UTC "Zulu" format,
  /// [description] The description of the ReasoningEngine.
  /// [displayName] The display name of the ReasoningEngine.
  /// [encryptionSpec] Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// [name] The generated name of the ReasoningEngine, in the format
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the reasoning engine. eg us-central1
  /// [spec] Optional. Configurations of the ReasoningEngine.
  /// [updateTime] The timestamp of when the Index was last updated in RFC3339 UTC "Zulu"
  AiReasoningEngineState({
    this.createTime,
    this.description,
    this.displayName,
    this.encryptionSpec,
    this.name,
    this.project,
    this.region,
    this.spec,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'spec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory AiReasoningEngineState.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      encryptionSpec: map['encryptionSpec'] == null ? null : (AiReasoningEngineEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      spec: map['spec'] == null ? null : (AiReasoningEngineSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

