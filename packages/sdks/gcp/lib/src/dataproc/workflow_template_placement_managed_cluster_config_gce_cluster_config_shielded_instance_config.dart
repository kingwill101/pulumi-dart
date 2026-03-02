// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig {
  /// Defines whether instances have [Integrity Monitoring](https://cloud.google.com/compute/shielded-vm/docs/shielded-vm#integrity-monitoring) enabled.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// Defines whether instances have [Secure Boot](https://cloud.google.com/compute/shielded-vm/docs/shielded-vm#secure-boot) enabled.
  final pulumi.Input<bool>? enableSecureBoot;
  /// Defines whether instances have the [vTPM](https://cloud.google.com/compute/shielded-vm/docs/shielded-vm#vtpm) enabled.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines whether instances have [Integrity Monitoring](https://cloud.google.com/compute/shielded-vm/docs/shielded-vm#integrity-monitoring) enabled.
  /// [enableSecureBoot] Defines whether instances have [Secure Boot](https://cloud.google.com/compute/shielded-vm/docs/shielded-vm#secure-boot) enabled.
  /// [enableVtpm] Defines whether instances have the [vTPM](https://cloud.google.com/compute/shielded-vm/docs/shielded-vm#vtpm) enabled.
  WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': ?enableIntegrityMonitoring,
      'enableSecureBoot': ?enableSecureBoot,
      'enableVtpm': ?enableVtpm,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : (map['enableIntegrityMonitoring']! as bool).input(),
      enableSecureBoot: map['enableSecureBoot'] == null ? null : (map['enableSecureBoot']! as bool).input(),
      enableVtpm: map['enableVtpm'] == null ? null : (map['enableVtpm']! as bool).input(),
    );
  }
}

