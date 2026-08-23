// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_hub_config_install_spec.dart';
import 'policy_controller_monitoring_config.dart';
import 'policy_controller_policy_content_spec.dart';

/// Configuration for Policy Controller
class PolicyControllerHubConfig {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final pulumi.Input<String>? auditIntervalSeconds;
  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default (currently 20) will be used.
  final pulumi.Input<String>? constraintViolationLimit;
  /// Map of deployment configs to deployments ("admission", "audit", "mutation').
  final pulumi.Input<Map<String, String>>? deploymentConfigs;
  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final pulumi.Input<List<String>>? exemptableNamespaces;
  /// The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
  final pulumi.Input<PolicyControllerHubConfigInstallSpec>? installSpec;
  /// Logs all denies and dry run failures.
  final pulumi.Input<bool>? logDeniesEnabled;
  /// Monitoring specifies the configuration of monitoring.
  final pulumi.Input<PolicyControllerMonitoringConfig>? monitoring;
  /// Enables the ability to mutate resources using Policy Controller.
  final pulumi.Input<bool>? mutationEnabled;
  /// Specifies the desired policy content on the cluster
  final pulumi.Input<PolicyControllerPolicyContentSpec>? policyContent;
  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final pulumi.Input<bool>? referentialRulesEnabled;

  /// Creates a new [PolicyControllerHubConfig].
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
  const PolicyControllerHubConfig({
    this.auditIntervalSeconds,
    this.constraintViolationLimit,
    this.deploymentConfigs,
    this.exemptableNamespaces,
    this.installSpec,
    this.logDeniesEnabled,
    this.monitoring,
    this.mutationEnabled,
    this.policyContent,
    this.referentialRulesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditIntervalSeconds': ?auditIntervalSeconds,
      'constraintViolationLimit': ?constraintViolationLimit,
      'deploymentConfigs': ?deploymentConfigs,
      'exemptableNamespaces': ?exemptableNamespaces,
      'installSpec': ?pulumi.Input.mapOptionalInputValue<PolicyControllerHubConfigInstallSpec, String>(installSpec, (value) => value.wireValue),
      'logDeniesEnabled': ?logDeniesEnabled,
      'monitoring': ?pulumi.Input.mapOptionalInputValue<PolicyControllerMonitoringConfig, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'mutationEnabled': ?mutationEnabled,
      'policyContent': ?pulumi.Input.mapOptionalInputValue<PolicyControllerPolicyContentSpec, Map<String, dynamic>>(policyContent, (value) => value.toMap()),
      'referentialRulesEnabled': ?referentialRulesEnabled,
    };
  }

  factory PolicyControllerHubConfig.fromMap(Map<String, dynamic> map) {
    return PolicyControllerHubConfig(
      auditIntervalSeconds: (() { final guardedValue = map['auditIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      constraintViolationLimit: (() { final guardedValue = map['constraintViolationLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentConfigs: (() { final guardedValue = map['deploymentConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      exemptableNamespaces: (() { final guardedValue = map['exemptableNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      installSpec: (() { final guardedValue = map['installSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyControllerHubConfigInstallSpec.fromValue(guardedValue as String)); })(),
      logDeniesEnabled: (() { final guardedValue = map['logDeniesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyControllerMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mutationEnabled: (() { final guardedValue = map['mutationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      policyContent: (() { final guardedValue = map['policyContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyControllerPolicyContentSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      referentialRulesEnabled: (() { final guardedValue = map['referentialRulesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
