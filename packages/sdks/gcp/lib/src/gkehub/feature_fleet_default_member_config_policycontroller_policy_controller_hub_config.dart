// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_deployment_config.dart';
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_monitoring.dart';
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content.dart';

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig {
  /// Interval for Policy Controller Audit scans (in seconds). When set to 0, this disables audit functionality altogether.
  final pulumi.Input<int>? auditIntervalSeconds;

  /// The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used.
  final pulumi.Input<int>? constraintViolationLimit;

  /// Map of deployment configs to deployments ("admission", "audit", "mutation").
  /// Structure is documented below.
  final pulumi.Input<
    List<
      FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig
    >
  >?
  deploymentConfigs;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final pulumi.Input<List<String>>? exemptableNamespaces;

  /// Configures the mode of the Policy Controller installation
  /// Possible values are: `INSTALL_SPEC_UNSPECIFIED`, `INSTALL_SPEC_NOT_INSTALLED`, `INSTALL_SPEC_ENABLED`, `INSTALL_SPEC_SUSPENDED`, `INSTALL_SPEC_DETACHED`.
  final pulumi.Input<String> installSpec;

  /// Logs all denies and dry run failures.
  final pulumi.Input<bool>? logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring Policy Controller.
  /// Structure is documented below.
  final pulumi.Input<
    FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring
  >?
  monitoring;

  /// Enables the ability to mutate resources using Policy Controller.
  final pulumi.Input<bool>? mutationEnabled;

  /// Specifies the desired policy content on the cluster.
  /// Structure is documented below.
  final pulumi.Input<
    FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent
  >?
  policyContent;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final pulumi.Input<bool>? referentialRulesEnabled;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig].
  /// [auditIntervalSeconds] Interval for Policy Controller Audit scans (in seconds). When set to 0, this disables audit functionality altogether.
  /// [constraintViolationLimit] The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used.
  /// [deploymentConfigs] Map of deployment configs to deployments ("admission", "audit", "mutation").
  /// [exemptableNamespaces] The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  /// [installSpec] Configures the mode of the Policy Controller installation
  /// [logDeniesEnabled] Logs all denies and dry run failures.
  /// [monitoring] Monitoring specifies the configuration of monitoring Policy Controller.
  /// [mutationEnabled] Enables the ability to mutate resources using Policy Controller.
  /// [policyContent] Specifies the desired policy content on the cluster.
  /// [referentialRulesEnabled] Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig({
    this.auditIntervalSeconds,
    this.constraintViolationLimit,
    this.deploymentConfigs,
    this.exemptableNamespaces,
    required this.installSpec,
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
      'deploymentConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig
            >,
            List<Map<String, dynamic>>
          >(
            deploymentConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'exemptableNamespaces': ?exemptableNamespaces,
      'installSpec': installSpec,
      'logDeniesEnabled': ?logDeniesEnabled,
      'monitoring':
          ?pulumi.Input.mapOptionalInputValue<
            FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring,
            Map<String, dynamic>
          >(monitoring, (value) => value.toMap()),
      'mutationEnabled': ?mutationEnabled,
      'policyContent':
          ?pulumi.Input.mapOptionalInputValue<
            FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent,
            Map<String, dynamic>
          >(policyContent, (value) => value.toMap()),
      'referentialRulesEnabled': ?referentialRulesEnabled,
    };
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig(
      auditIntervalSeconds: (() {
        final guardedValue = map['auditIntervalSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      constraintViolationLimit: (() {
        final guardedValue = map['constraintViolationLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      deploymentConfigs: (() {
        final guardedValue = map['deploymentConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig
          >(
            guardedValue,
            (value) =>
                FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      exemptableNamespaces: (() {
        final guardedValue = map['exemptableNamespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      installSpec: pulumi.Input.fromValue(map['installSpec'] as String),
      logDeniesEnabled: (() {
        final guardedValue = map['logDeniesEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      monitoring: (() {
        final guardedValue = map['monitoring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mutationEnabled: (() {
        final guardedValue = map['mutationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      policyContent: (() {
        final guardedValue = map['policyContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      referentialRulesEnabled: (() {
        final guardedValue = map['referentialRulesEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
