// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
class ShieldedInstanceConfig {
  /// Optional. Defines whether instances have integrity monitoring enabled.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// Optional. Defines whether instances have Secure Boot enabled.
  final pulumi.Input<bool>? enableSecureBoot;
  /// Optional. Defines whether instances have the vTPM enabled.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [ShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Optional. Defines whether instances have integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Defines whether instances have Secure Boot enabled.
  /// [enableVtpm] Optional. Defines whether instances have the vTPM enabled.
  ShieldedInstanceConfig({
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

  factory ShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : (map['enableIntegrityMonitoring'] as bool).input(),
      enableSecureBoot: map['enableSecureBoot'] == null ? null : (map['enableSecureBoot'] as bool).input(),
      enableVtpm: map['enableVtpm'] == null ? null : (map['enableVtpm'] as bool).input(),
    );
  }
}

