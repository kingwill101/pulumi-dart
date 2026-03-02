// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config.dart';
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_monitoring.dart';
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content.dart';

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig {
  /// Interval for Policy Controller Audit scans (in seconds). When set to 0, this disables audit functionality altogether.
  final pulumi.Input<int> auditIntervalSeconds;
  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used.
  final pulumi.Input<int> constraintViolationLimit;
  /// Map of deployment configs to deployments ("admission", "audit", "mutation").
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig>> deploymentConfigs;
  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final pulumi.Input<List<String>> exemptableNamespaces;
  /// Configures the mode of the Policy Controller installation Possible values: ["INSTALL_SPEC_UNSPECIFIED", "INSTALL_SPEC_NOT_INSTALLED", "INSTALL_SPEC_ENABLED", "INSTALL_SPEC_SUSPENDED", "INSTALL_SPEC_DETACHED"]
  final pulumi.Input<String> installSpec;
  /// Logs all denies and dry run failures.
  final pulumi.Input<bool> logDeniesEnabled;
  /// Monitoring specifies the configuration of monitoring Policy Controller.
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring>> monitorings;
  /// Enables the ability to mutate resources using Policy Controller.
  final pulumi.Input<bool> mutationEnabled;
  /// Specifies the desired policy content on the cluster.
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent>> policyContents;
  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final pulumi.Input<bool> referentialRulesEnabled;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig].
  /// [auditIntervalSeconds] Interval for Policy Controller Audit scans (in seconds). When set to 0, this disables audit functionality altogether.
  /// [constraintViolationLimit] The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used.
  /// [deploymentConfigs] Map of deployment configs to deployments ("admission", "audit", "mutation").
  /// [exemptableNamespaces] The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  /// [installSpec] Configures the mode of the Policy Controller installation Possible values: ["INSTALL_SPEC_UNSPECIFIED", "INSTALL_SPEC_NOT_INSTALLED", "INSTALL_SPEC_ENABLED", "INSTALL_SPEC_SUSPENDED", "INSTALL_SPEC_DETACHED"]
  /// [logDeniesEnabled] Logs all denies and dry run failures.
  /// [monitorings] Monitoring specifies the configuration of monitoring Policy Controller.
  /// [mutationEnabled] Enables the ability to mutate resources using Policy Controller.
  /// [policyContents] Specifies the desired policy content on the cluster.
  /// [referentialRulesEnabled] Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig({
    required this.auditIntervalSeconds,
    required this.constraintViolationLimit,
    required this.deploymentConfigs,
    required this.exemptableNamespaces,
    required this.installSpec,
    required this.logDeniesEnabled,
    required this.monitorings,
    required this.mutationEnabled,
    required this.policyContents,
    required this.referentialRulesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditIntervalSeconds': auditIntervalSeconds,
      'constraintViolationLimit': constraintViolationLimit,
      'deploymentConfigs': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig>, List<Map<String, dynamic>>>(deploymentConfigs, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exemptableNamespaces': exemptableNamespaces,
      'installSpec': installSpec,
      'logDeniesEnabled': logDeniesEnabled,
      'monitorings': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring>, List<Map<String, dynamic>>>(monitorings, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mutationEnabled': mutationEnabled,
      'policyContents': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent>, List<Map<String, dynamic>>>(policyContents, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'referentialRulesEnabled': referentialRulesEnabled,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig(
      auditIntervalSeconds: (map['auditIntervalSeconds'] as int).input(),
      constraintViolationLimit: (map['constraintViolationLimit'] as int).input(),
      deploymentConfigs: (pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig>(map['deploymentConfigs'], (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      exemptableNamespaces: ((map['exemptableNamespaces'] as List).cast<String>()).input(),
      installSpec: (map['installSpec'] as String).input(),
      logDeniesEnabled: (map['logDeniesEnabled'] as bool).input(),
      monitorings: (pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring>(map['monitorings'], (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mutationEnabled: (map['mutationEnabled'] as bool).input(),
      policyContents: (pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent>(map['policyContents'], (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      referentialRulesEnabled: (map['referentialRulesEnabled'] as bool).input(),
    );
  }
}

