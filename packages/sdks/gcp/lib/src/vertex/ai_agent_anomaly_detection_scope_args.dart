// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_agent_anomaly_detection_scope_encryption_spec.dart';

/// {@template pulumi_vertex_ai_agent_anomaly_detection_scope_ai_agent_anomaly_detection_scope_args_doc}
/// The set of arguments for AiAgentAnomalyDetectionScope.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_agent_anomaly_detection_scope_ai_agent_anomaly_detection_scope_args_doc}
class AiAgentAnomalyDetectionScopeArgs {
  /// The ID to use for the AgentAnomalyDetectionScope, which will become the
  /// final component of the scope's resource name. This value should be 1-63
  /// characters and valid characters are /[a-z][0-9]-/.
  final pulumi.Input<String> agentAnomalyDetectionScopeId;
  /// When true, newly discovered agents that share log and observability
  /// buckets with this scope are automatically enrolled as ACTIVE monitored
  /// agents, up to the project's monitored agent quota. When false, newly
  /// discovered agents are added as DISABLED monitored agents and must be
  /// enabled explicitly.
  final pulumi.Input<bool?>? autoEnroll;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User provided display name of the AgentAnomalyDetectionScope.
  final pulumi.Input<String?>? displayName;
  /// Customer-managed encryption key spec for the scope. If set, this scope
  /// and all sub-resources are secured by this key. The key must be a Cloud
  /// KMS key co-located with the scope location (for example, `us` for a `us`
  /// scope, `europe` for an `eu` scope, or matching single region).
  /// Structure is documented below.
  final pulumi.Input<AiAgentAnomalyDetectionScopeEncryptionSpec?>? encryptionSpec;
  /// Customer owned Cloud Logging bucket resource names attached to this scope.
  /// Format: projects/{{project}}/locations/{{location}}/buckets/{{bucket}}.
  final pulumi.Input<List<String>> logBuckets;
  /// Customer owned Cloud Observability bucket resource names attached to this
  /// scope.
  /// Format: projects/{{project}}/locations/{{location}}/buckets/{{bucket}}/datasets/{{dataset}}.
  final pulumi.Input<List<String>> observabilityBuckets;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the AgentAnomalyDetectionScope, e.g. us-central1.
  final pulumi.Input<String> region;

  /// Creates a new [AiAgentAnomalyDetectionScopeArgs].
  /// [agentAnomalyDetectionScopeId] The ID to use for the AgentAnomalyDetectionScope, which will become the
  /// [autoEnroll] When true, newly discovered agents that share log and observability
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User provided display name of the AgentAnomalyDetectionScope.
  /// [encryptionSpec] Customer-managed encryption key spec for the scope. If set, this scope
  /// [logBuckets] Customer owned Cloud Logging bucket resource names attached to this scope.
  /// [observabilityBuckets] Customer owned Cloud Observability bucket resource names attached to this
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the AgentAnomalyDetectionScope, e.g. us-central1.
  const AiAgentAnomalyDetectionScopeArgs({
    required this.agentAnomalyDetectionScopeId,
    this.autoEnroll,
    this.deletionPolicy,
    this.displayName,
    this.encryptionSpec,
    required this.logBuckets,
    required this.observabilityBuckets,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAnomalyDetectionScopeId': agentAnomalyDetectionScopeId,
      'autoEnroll': ?autoEnroll,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiAgentAnomalyDetectionScopeEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'logBuckets': logBuckets,
      'observabilityBuckets': observabilityBuckets,
      'project': ?project,
      'region': region,
    };
  }

  factory AiAgentAnomalyDetectionScopeArgs.fromMap(Map<String, dynamic> map) {
    return AiAgentAnomalyDetectionScopeArgs(
      agentAnomalyDetectionScopeId: pulumi.Input.fromValue(map['agentAnomalyDetectionScopeId'] as String),
      autoEnroll: (() { final guardedValue = map['autoEnroll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiAgentAnomalyDetectionScopeEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logBuckets: pulumi.Input.fromValue((map['logBuckets'] as List).cast<String>()),
      observabilityBuckets: pulumi.Input.fromValue((map['observabilityBuckets'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
