// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec.dart';
import 'ai_reasoning_engine_encryption_spec.dart';
import 'ai_reasoning_engine_spec.dart';
import 'ai_reasoning_engine_traffic_config.dart';

/// Input properties used for looking up and filtering AiReasoningEngine resources.
class AiReasoningEngineState {
  /// (Optional, Beta)
  /// Optional. Configuration for how Agent Engine sub-resources should manage context.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpec>? contextSpec;
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
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
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// The generated name of the ReasoningEngine, in the format
  /// projects/{project}/locations/{location}/reasoningEngines/{reasoningEngine}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
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
  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu"
  /// format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;
  /// (Beta)
  /// Output only. The URL of the reasoning engine.
  final pulumi.Input<String>? url;

  /// Creates a new [AiReasoningEngineState].
  /// [contextSpec] (Optional, Beta)
  /// [createTime] The timestamp of when the Index was created in RFC3339 UTC "Zulu" format,
  /// [deletionPolicy] Optional. The deletion policy for the reasoning engine.
  /// [description] The description of the ReasoningEngine.
  /// [displayName] The display name of the ReasoningEngine.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// [labels] The labels associated with this ReasoningEngine. You can use these to
  /// [name] The generated name of the ReasoningEngine, in the format
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the reasoning engine. eg us-central1
  /// [spec] Optional. Configurations of the ReasoningEngine.
  /// [trafficConfig] (Optional, Beta)
  /// [updateTime] The timestamp of when the Index was last updated in RFC3339 UTC "Zulu"
  /// [url] (Beta)
  const AiReasoningEngineState({
    this.contextSpec,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpec,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.spec,
    this.trafficConfig,
    this.updateTime,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpec, Map<String, dynamic>>(contextSpec, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'spec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'trafficConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineTrafficConfig, Map<String, dynamic>>(trafficConfig, (value) => value.toMap()),
      'updateTime': ?updateTime,
      'url': ?url,
    };
  }

  factory AiReasoningEngineState.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineState(
      contextSpec: (() { final guardedValue = map['contextSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trafficConfig: (() { final guardedValue = map['trafficConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineTrafficConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
