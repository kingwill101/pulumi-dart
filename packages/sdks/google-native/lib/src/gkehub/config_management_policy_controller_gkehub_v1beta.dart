// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_policy_controller_monitoring_gkehub_v1beta.dart';

/// Configuration for Policy Controller
class ConfigManagementPolicyControllerGkehubV1beta {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final pulumi.Input<String>? auditIntervalSeconds;
  /// Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  final pulumi.Input<bool>? enabled;
  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final pulumi.Input<List<String>>? exemptableNamespaces;
  /// Logs all denies and dry run failures.
  final pulumi.Input<bool>? logDeniesEnabled;
  /// Monitoring specifies the configuration of monitoring.
  final pulumi.Input<ConfigManagementPolicyControllerMonitoringGkehubV1beta>? monitoring;
  /// Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster.
  final pulumi.Input<bool>? mutationEnabled;
  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final pulumi.Input<bool>? referentialRulesEnabled;
  /// Installs the default template library along with Policy Controller.
  final pulumi.Input<bool>? templateLibraryInstalled;

  /// Creates a new [ConfigManagementPolicyControllerGkehubV1beta].
  /// [auditIntervalSeconds] Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  /// [enabled] Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  /// [exemptableNamespaces] The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  /// [logDeniesEnabled] Logs all denies and dry run failures.
  /// [monitoring] Monitoring specifies the configuration of monitoring.
  /// [mutationEnabled] Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster.
  /// [referentialRulesEnabled] Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  /// [templateLibraryInstalled] Installs the default template library along with Policy Controller.
  ConfigManagementPolicyControllerGkehubV1beta({
    this.auditIntervalSeconds,
    this.enabled,
    this.exemptableNamespaces,
    this.logDeniesEnabled,
    this.monitoring,
    this.mutationEnabled,
    this.referentialRulesEnabled,
    this.templateLibraryInstalled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditIntervalSeconds': ?auditIntervalSeconds,
      'enabled': ?enabled,
      'exemptableNamespaces': ?exemptableNamespaces,
      'logDeniesEnabled': ?logDeniesEnabled,
      'monitoring': ?pulumi.Input.mapOptionalInputValue<ConfigManagementPolicyControllerMonitoringGkehubV1beta, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'mutationEnabled': ?mutationEnabled,
      'referentialRulesEnabled': ?referentialRulesEnabled,
      'templateLibraryInstalled': ?templateLibraryInstalled,
    };
  }

  factory ConfigManagementPolicyControllerGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ConfigManagementPolicyControllerGkehubV1beta(
      auditIntervalSeconds: map['auditIntervalSeconds'] == null ? null : (map['auditIntervalSeconds'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      exemptableNamespaces: map['exemptableNamespaces'] == null ? null : ((map['exemptableNamespaces'] as List).cast<String>()).input(),
      logDeniesEnabled: map['logDeniesEnabled'] == null ? null : (map['logDeniesEnabled'] as bool).input(),
      monitoring: map['monitoring'] == null ? null : (ConfigManagementPolicyControllerMonitoringGkehubV1beta.fromMap((map['monitoring'] as Map).cast<String, dynamic>())).input(),
      mutationEnabled: map['mutationEnabled'] == null ? null : (map['mutationEnabled'] as bool).input(),
      referentialRulesEnabled: map['referentialRulesEnabled'] == null ? null : (map['referentialRulesEnabled'] as bool).input(),
      templateLibraryInstalled: map['templateLibraryInstalled'] == null ? null : (map['templateLibraryInstalled'] as bool).input(),
    );
  }
}

