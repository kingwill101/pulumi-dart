// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_policycontroller_policy_controller_hub_config_deployment_config.dart';
import 'feature_membership_policycontroller_policy_controller_hub_config_monitoring.dart';
import 'feature_membership_policycontroller_policy_controller_hub_config_policy_content.dart';

class FeatureMembershipPolicycontrollerPolicyControllerHubConfig {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final int? auditIntervalSeconds;
  /// The maximum number of audit violations to be stored in a constraint. If not set, the  default of 20 will be used.
  final int? constraintViolationLimit;
  /// Map of deployment configs to deployments ("admission", "audit", "mutation").
  final List<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig>? deploymentConfigs;
  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final List<String>? exemptableNamespaces;
  /// Configures the mode of the Policy Controller installation. Must be one of `INSTALL_SPEC_NOT_INSTALLED`, `INSTALL_SPEC_ENABLED`, `INSTALL_SPEC_SUSPENDED` or `INSTALL_SPEC_DETACHED`.
  final String? installSpec;
  /// Logs all denies and dry run failures.
  final bool? logDeniesEnabled;
  /// Specifies the backends Policy Controller should export metrics to. Structure is documented below.
  final FeatureMembershipPolicycontrollerPolicyControllerHubConfigMonitoring? monitoring;
  /// Enables mutation in policy controller. If true, mutation CRDs, webhook, and controller deployment will be deployed to the cluster.
  final bool? mutationEnabled;
  /// Specifies the desired policy content on the cluster. Structure is documented below.
  final FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent? policyContent;
  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final bool? referentialRulesEnabled;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfig].
  /// [auditIntervalSeconds] Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  /// [constraintViolationLimit] The maximum number of audit violations to be stored in a constraint. If not set, the  default of 20 will be used.
  /// [deploymentConfigs] Map of deployment configs to deployments ("admission", "audit", "mutation").
  /// [exemptableNamespaces] The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  /// [installSpec] Configures the mode of the Policy Controller installation. Must be one of `INSTALL_SPEC_NOT_INSTALLED`, `INSTALL_SPEC_ENABLED`, `INSTALL_SPEC_SUSPENDED` or `INSTALL_SPEC_DETACHED`.
  /// [logDeniesEnabled] Logs all denies and dry run failures.
  /// [monitoring] Specifies the backends Policy Controller should export metrics to. Structure is documented below.
  /// [mutationEnabled] Enables mutation in policy controller. If true, mutation CRDs, webhook, and controller deployment will be deployed to the cluster.
  /// [policyContent] Specifies the desired policy content on the cluster. Structure is documented below.
  /// [referentialRulesEnabled] Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfig({
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
      'deploymentConfigs': ?deploymentConfigs == null ? null : pulumi.Input.encodeList<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig, Map<String, dynamic>>(deploymentConfigs!, (value) => value.toMap()),
      'exemptableNamespaces': ?exemptableNamespaces,
      'installSpec': ?installSpec,
      'logDeniesEnabled': ?logDeniesEnabled,
      'monitoring': ?monitoring == null ? null : monitoring!.toMap(),
      'mutationEnabled': ?mutationEnabled,
      'policyContent': ?policyContent == null ? null : policyContent!.toMap(),
      'referentialRulesEnabled': ?referentialRulesEnabled,
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfig.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfig(
      auditIntervalSeconds: map['auditIntervalSeconds'] == null ? null : map['auditIntervalSeconds'] as int,
      constraintViolationLimit: map['constraintViolationLimit'] == null ? null : map['constraintViolationLimit'] as int,
      deploymentConfigs: map['deploymentConfigs'] == null ? null : pulumi.Input.decodeList<FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig>(map['deploymentConfigs'], (value) => FeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfig.fromMap((value as Map).cast<String, dynamic>())),
      exemptableNamespaces: map['exemptableNamespaces'] == null ? null : (map['exemptableNamespaces'] as List).cast<String>(),
      installSpec: map['installSpec'] == null ? null : map['installSpec'] as String,
      logDeniesEnabled: map['logDeniesEnabled'] == null ? null : map['logDeniesEnabled'] as bool,
      monitoring: map['monitoring'] == null ? null : FeatureMembershipPolicycontrollerPolicyControllerHubConfigMonitoring.fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
      mutationEnabled: map['mutationEnabled'] == null ? null : map['mutationEnabled'] as bool,
      policyContent: map['policyContent'] == null ? null : FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent.fromMap((map['policyContent'] as Map).cast<String, dynamic>()),
      referentialRulesEnabled: map['referentialRulesEnabled'] == null ? null : map['referentialRulesEnabled'] as bool,
    );
  }
}

