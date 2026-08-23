// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec.dart';
import 'ai_reasoning_engine_encryption_spec.dart';
import 'ai_reasoning_engine_spec.dart';
import 'ai_reasoning_engine_traffic_config.dart';

/// {@template pulumi_vertex_ai_reasoning_engine_ai_reasoning_engine_args_doc}
/// The set of arguments for AiReasoningEngine.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_reasoning_engine_ai_reasoning_engine_args_doc}
class AiReasoningEngineArgs {
  /// (Optional, Beta)
  /// Optional. Configuration for how Agent Engine sub-resources should manage context.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpec>? contextSpec;
  /// Optional. The deletion policy for the reasoning engine.
  /// Setting this to FORCE allows the reasoning engine to be deleted regardless of child undeleted resources.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is permitted.
  final pulumi.Input<String>? deletionPolicy;
  /// The description of the ReasoningEngine.
  final pulumi.Input<String>? description;
  /// The display name of the ReasoningEngine.
  final pulumi.Input<String> displayName;
  /// Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// If set, this ReasoningEngine and all sub-resources of this ReasoningEngine
  /// will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineEncryptionSpec>? encryptionSpec;
  /// The labels associated with this ReasoningEngine. You can use these to
  /// organize and group your ReasoningEngines.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the reasoning engine. eg us-central1
  final pulumi.Input<String>? region;
  /// Optional. Configurations of the ReasoningEngine.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpec>? spec;
  /// (Optional, Beta)
  /// Optional. Traffic distribution configuration for the Reasoning Engine.
  /// &gt; **Note:** Because revision IDs do not exist before the resource is created, the best practice for initial deployment is to set `trafficSplitAlwaysLatest {}`. Once the resource is created, you can update the configuration to a manual split using newly generated revision IDs, short names (e.g. `rev-1`), or keywords such as `LATEST` and `PREVIOUS`.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineTrafficConfig>? trafficConfig;

  /// Creates a new [AiReasoningEngineArgs].
  /// [contextSpec] (Optional, Beta)
  /// [deletionPolicy] Optional. The deletion policy for the reasoning engine.
  /// [description] The description of the ReasoningEngine.
  /// [displayName] The display name of the ReasoningEngine.
  /// [encryptionSpec] Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// [labels] The labels associated with this ReasoningEngine. You can use these to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the reasoning engine. eg us-central1
  /// [spec] Optional. Configurations of the ReasoningEngine.
  /// [trafficConfig] (Optional, Beta)
  const AiReasoningEngineArgs({
    this.contextSpec,
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.labels,
    this.project,
    this.region,
    this.spec,
    this.trafficConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpec, Map<String, dynamic>>(contextSpec, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'project': ?project,
      'region': ?region,
      'spec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'trafficConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineTrafficConfig, Map<String, dynamic>>(trafficConfig, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineArgs.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineArgs(
      contextSpec: (() { final guardedValue = map['contextSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trafficConfig: (() { final guardedValue = map['trafficConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineTrafficConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
