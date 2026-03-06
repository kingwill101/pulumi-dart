// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_monitoring_config_response_gkehub_v1alpha.dart';
import 'policy_controller_policy_content_spec_response_gkehub_v1alpha.dart';

/// Configuration for Policy Controller
class PolicyControllerHubConfigResponseGkehubV1alpha {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final pulumi.Input<String> auditIntervalSeconds;
  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default (currently 20) will be used.
  final pulumi.Input<String> constraintViolationLimit;
  /// Map of deployment configs to deployments ("admission", "audit", "mutation').
  final pulumi.Input<Map<String, String>> deploymentConfigs;
  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final pulumi.Input<List<String>> exemptableNamespaces;
  /// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
  final pulumi.Input<String> installSpec;
  /// Logs all denies and dry run failures.
  final pulumi.Input<bool> logDeniesEnabled;
  /// Monitoring specifies the configuration of monitoring.
  final pulumi.Input<PolicyControllerMonitoringConfigResponseGkehubV1alpha> monitoring;
  /// Enables the ability to mutate resources using Policy Controller.
  final pulumi.Input<bool> mutationEnabled;
  /// Specifies the desired policy content on the cluster
  final pulumi.Input<PolicyControllerPolicyContentSpecResponseGkehubV1alpha> policyContent;
  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final pulumi.Input<bool> referentialRulesEnabled;

  /// Creates a new [PolicyControllerHubConfigResponseGkehubV1alpha].
  /// [auditIntervalSeconds] Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  /// [constraintViolationLimit] The maximum number of audit violations to be stored in a constraint. If not set, the internal default (currently 20) will be used.
  /// [deploymentConfigs] Map of deployment configs to deployments ("admission", "audit", "mutation').
  /// [exemptableNamespaces] The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  /// [installSpec] The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
  /// [logDeniesEnabled] Logs all denies and dry run failures.
  /// [monitoring] Monitoring specifies the configuration of monitoring.
  /// [mutationEnabled] Enables the ability to mutate resources using Policy Controller.
  /// [policyContent] Specifies the desired policy content on the cluster
  /// [referentialRulesEnabled] Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  const PolicyControllerHubConfigResponseGkehubV1alpha({
    required this.auditIntervalSeconds,
    required this.constraintViolationLimit,
    required this.deploymentConfigs,
    required this.exemptableNamespaces,
    required this.installSpec,
    required this.logDeniesEnabled,
    required this.monitoring,
    required this.mutationEnabled,
    required this.policyContent,
    required this.referentialRulesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditIntervalSeconds': auditIntervalSeconds,
      'constraintViolationLimit': constraintViolationLimit,
      'deploymentConfigs': deploymentConfigs,
      'exemptableNamespaces': exemptableNamespaces,
      'installSpec': installSpec,
      'logDeniesEnabled': logDeniesEnabled,
      'monitoring': pulumi.Input.mapInputValue<PolicyControllerMonitoringConfigResponseGkehubV1alpha, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'mutationEnabled': mutationEnabled,
      'policyContent': pulumi.Input.mapInputValue<PolicyControllerPolicyContentSpecResponseGkehubV1alpha, Map<String, dynamic>>(policyContent, (value) => value.toMap()),
      'referentialRulesEnabled': referentialRulesEnabled,
    };
  }

  factory PolicyControllerHubConfigResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return PolicyControllerHubConfigResponseGkehubV1alpha(
      auditIntervalSeconds: pulumi.Input.fromValue(map['auditIntervalSeconds'] as String),
      constraintViolationLimit: pulumi.Input.fromValue(map['constraintViolationLimit'] as String),
      deploymentConfigs: pulumi.Input.fromValue((map['deploymentConfigs'] as Map).cast<String, String>()),
      exemptableNamespaces: pulumi.Input.fromValue((map['exemptableNamespaces'] as List).cast<String>()),
      installSpec: pulumi.Input.fromValue(map['installSpec'] as String),
      logDeniesEnabled: pulumi.Input.fromValue(map['logDeniesEnabled'] as bool),
      monitoring: pulumi.Input.fromValue(PolicyControllerMonitoringConfigResponseGkehubV1alpha.fromMap((map['monitoring']! as Map).cast<String, dynamic>())),
      mutationEnabled: pulumi.Input.fromValue(map['mutationEnabled'] as bool),
      policyContent: pulumi.Input.fromValue(PolicyControllerPolicyContentSpecResponseGkehubV1alpha.fromMap((map['policyContent']! as Map).cast<String, dynamic>())),
      referentialRulesEnabled: pulumi.Input.fromValue(map['referentialRulesEnabled'] as bool),
    );
  }
}

