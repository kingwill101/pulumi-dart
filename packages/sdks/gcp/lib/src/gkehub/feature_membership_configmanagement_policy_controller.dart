// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_configmanagement_policy_controller_monitoring.dart';

class FeatureMembershipConfigmanagementPolicyController {
  /// Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  final pulumi.Input<String>? auditIntervalSeconds;
  /// Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  final pulumi.Input<bool>? enabled;
  /// The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  final pulumi.Input<List<String>>? exemptableNamespaces;
  /// Logs all denies and dry run failures.
  final pulumi.Input<bool>? logDeniesEnabled;
  /// Specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]. Default: ["cloudmonitoring", "prometheus"]
  final pulumi.Input<FeatureMembershipConfigmanagementPolicyControllerMonitoring>? monitoring;
  /// Enables mutation in policy controller. If true, mutation CRDs, webhook, and controller deployment will be deployed to the cluster.
  final pulumi.Input<bool>? mutationEnabled;
  /// Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  final pulumi.Input<bool>? referentialRulesEnabled;
  /// Installs the default template library along with Policy Controller.
  final pulumi.Input<bool>? templateLibraryInstalled;

  /// Creates a new [FeatureMembershipConfigmanagementPolicyController].
  /// [auditIntervalSeconds] Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  /// [enabled] Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect.
  /// [exemptableNamespaces] The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  /// [logDeniesEnabled] Logs all denies and dry run failures.
  /// [monitoring] Specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]. Default: ["cloudmonitoring", "prometheus"]
  /// [mutationEnabled] Enables mutation in policy controller. If true, mutation CRDs, webhook, and controller deployment will be deployed to the cluster.
  /// [referentialRulesEnabled] Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  /// [templateLibraryInstalled] Installs the default template library along with Policy Controller.
  FeatureMembershipConfigmanagementPolicyController({
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
      'monitoring': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipConfigmanagementPolicyControllerMonitoring, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'mutationEnabled': ?mutationEnabled,
      'referentialRulesEnabled': ?referentialRulesEnabled,
      'templateLibraryInstalled': ?templateLibraryInstalled,
    };
  }

  factory FeatureMembershipConfigmanagementPolicyController.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagementPolicyController(
      auditIntervalSeconds: map['auditIntervalSeconds'] == null ? null : (map['auditIntervalSeconds'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      exemptableNamespaces: map['exemptableNamespaces'] == null ? null : ((map['exemptableNamespaces'] as List).cast<String>()).input(),
      logDeniesEnabled: map['logDeniesEnabled'] == null ? null : (map['logDeniesEnabled'] as bool).input(),
      monitoring: map['monitoring'] == null ? null : (FeatureMembershipConfigmanagementPolicyControllerMonitoring.fromMap((map['monitoring'] as Map).cast<String, dynamic>())).input(),
      mutationEnabled: map['mutationEnabled'] == null ? null : (map['mutationEnabled'] as bool).input(),
      referentialRulesEnabled: map['referentialRulesEnabled'] == null ? null : (map['referentialRulesEnabled'] as bool).input(),
      templateLibraryInstalled: map['templateLibraryInstalled'] == null ? null : (map['templateLibraryInstalled'] as bool).input(),
    );
  }
}

