// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_policy_controller_monitoring_response.dart';

/// Configuration for Policy Controller
class ConfigManagementPolicyControllerResponse {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final pulumi.Input<String> auditIntervalSeconds;

  /// Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  final pulumi.Input<bool> enabled;

  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final pulumi.Input<List<String>> exemptableNamespaces;

  /// Logs all denies and dry run failures.
  final pulumi.Input<bool> logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  final pulumi.Input<ConfigManagementPolicyControllerMonitoringResponse>
  monitoring;

  /// Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster.
  final pulumi.Input<bool> mutationEnabled;

  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final pulumi.Input<bool> referentialRulesEnabled;

  /// Installs the default template library along with Policy Controller.
  final pulumi.Input<bool> templateLibraryInstalled;

  /// Last time this membership spec was updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [ConfigManagementPolicyControllerResponse].
  /// [auditIntervalSeconds] Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  /// [enabled] Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  /// [exemptableNamespaces] The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  /// [logDeniesEnabled] Logs all denies and dry run failures.
  /// [monitoring] Monitoring specifies the configuration of monitoring.
  /// [mutationEnabled] Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster.
  /// [referentialRulesEnabled] Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  /// [templateLibraryInstalled] Installs the default template library along with Policy Controller.
  /// [updateTime] Last time this membership spec was updated.
  ConfigManagementPolicyControllerResponse({
    required this.auditIntervalSeconds,
    required this.enabled,
    required this.exemptableNamespaces,
    required this.logDeniesEnabled,
    required this.monitoring,
    required this.mutationEnabled,
    required this.referentialRulesEnabled,
    required this.templateLibraryInstalled,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditIntervalSeconds': auditIntervalSeconds,
      'enabled': enabled,
      'exemptableNamespaces': exemptableNamespaces,
      'logDeniesEnabled': logDeniesEnabled,
      'monitoring':
          pulumi.Input.mapInputValue<
            ConfigManagementPolicyControllerMonitoringResponse,
            Map<String, dynamic>
          >(monitoring, (value) => value.toMap()),
      'mutationEnabled': mutationEnabled,
      'referentialRulesEnabled': referentialRulesEnabled,
      'templateLibraryInstalled': templateLibraryInstalled,
      'updateTime': updateTime,
    };
  }

  factory ConfigManagementPolicyControllerResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigManagementPolicyControllerResponse(
      auditIntervalSeconds: pulumi.Input.fromValue(
        map['auditIntervalSeconds'] as String,
      ),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      exemptableNamespaces: pulumi.Input.fromValue(
        (map['exemptableNamespaces'] as List).cast<String>(),
      ),
      logDeniesEnabled: pulumi.Input.fromValue(map['logDeniesEnabled'] as bool),
      monitoring: pulumi.Input.fromValue(
        ConfigManagementPolicyControllerMonitoringResponse.fromMap(
          (map['monitoring']! as Map).cast<String, dynamic>(),
        ),
      ),
      mutationEnabled: pulumi.Input.fromValue(map['mutationEnabled'] as bool),
      referentialRulesEnabled: pulumi.Input.fromValue(
        map['referentialRulesEnabled'] as bool,
      ),
      templateLibraryInstalled: pulumi.Input.fromValue(
        map['templateLibraryInstalled'] as bool,
      ),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
