// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_encryption_spec.dart';
import 'ai_reasoning_engine_spec.dart';

/// {@template pulumi_vertex_ai_reasoning_engine_ai_reasoning_engine_args_doc}
/// The set of arguments for AiReasoningEngine.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_reasoning_engine_ai_reasoning_engine_args_doc}
class AiReasoningEngineArgs {
  /// The description of the ReasoningEngine.
  final pulumi.Input<String>? description;
  /// The display name of the ReasoningEngine.
  final pulumi.Input<String> displayName;
  /// Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// If set, this ReasoningEngine and all sub-resources of this ReasoningEngine
  /// will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineEncryptionSpec>? encryptionSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the reasoning engine. eg us-central1
  final pulumi.Input<String>? region;
  /// Optional. Configurations of the ReasoningEngine.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpec>? spec;

  /// Creates a new [AiReasoningEngineArgs].
  /// [description] The description of the ReasoningEngine.
  /// [displayName] The display name of the ReasoningEngine.
  /// [encryptionSpec] Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the reasoning engine. eg us-central1
  /// [spec] Optional. Configurations of the ReasoningEngine.
  AiReasoningEngineArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<AiReasoningEngineEncryptionSpec>? encryptionSpec,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<AiReasoningEngineSpec>? spec,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      encryptionSpec = pulumi.Input.asOptionalInput<AiReasoningEngineEncryptionSpec>(encryptionSpec),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      spec = pulumi.Input.asOptionalInput<AiReasoningEngineSpec>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'spec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineArgs.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<AiReasoningEngineEncryptionSpec>(AiReasoningEngineEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<AiReasoningEngineSpec>(AiReasoningEngineSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

