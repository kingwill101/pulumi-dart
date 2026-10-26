// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_semantic_governance_policy_engine_gateway_config.dart';

/// {@template pulumi_vertex_ai_semantic_governance_policy_engine_ai_semantic_governance_policy_engine_args_doc}
/// The set of arguments for AiSemanticGovernancePolicyEngine.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_semantic_governance_policy_engine_ai_semantic_governance_policy_engine_args_doc}
class AiSemanticGovernancePolicyEngineArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Configurations for gateways, keyed by a user-defined gateway name. At most
  /// 5 gateway configurations are allowed. Each gateway name must be 1-63
  /// characters, start with a lowercase letter, contain only lowercase letters,
  /// numbers and hyphens, and not end with a hyphen.
  /// Structure is documented below.
  final pulumi.Input<List<AiSemanticGovernancePolicyEngineGatewayConfig>?>? gatewayConfigs;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the SemanticGovernancePolicyEngine, e.g. 'us-central1'.
  final pulumi.Input<String?>? region;

  /// Creates a new [AiSemanticGovernancePolicyEngineArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [gatewayConfigs] Configurations for gateways, keyed by a user-defined gateway name. At most
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the SemanticGovernancePolicyEngine, e.g. 'us-central1'.
  const AiSemanticGovernancePolicyEngineArgs({
    this.deletionPolicy,
    this.gatewayConfigs,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'gatewayConfigs': ?pulumi.Input.mapOptionalInputValue<List<AiSemanticGovernancePolicyEngineGatewayConfig>, List<Map<String, dynamic>>>(gatewayConfigs, (value) => pulumi.Input.encodeList<AiSemanticGovernancePolicyEngineGatewayConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiSemanticGovernancePolicyEngineArgs.fromMap(Map<String, dynamic> map) {
    return AiSemanticGovernancePolicyEngineArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayConfigs: (() { final guardedValue = map['gatewayConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiSemanticGovernancePolicyEngineGatewayConfig>(guardedValue, (value) => AiSemanticGovernancePolicyEngineGatewayConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
