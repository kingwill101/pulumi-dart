// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Shielded VM options.
class ShieldedVmConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled.
  final pulumi.Input<bool>? enableSecureBoot;
  /// Defines whether the instance has the vTPM enabled.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [ShieldedVmConfig].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  /// [enableVtpm] Defines whether the instance has the vTPM enabled.
  ShieldedVmConfig({
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

  factory ShieldedVmConfig.fromMap(Map<String, dynamic> map) {
    return ShieldedVmConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : (map['enableIntegrityMonitoring']! as bool).input(),
      enableSecureBoot: map['enableSecureBoot'] == null ? null : (map['enableSecureBoot']! as bool).input(),
      enableVtpm: map['enableVtpm'] == null ? null : (map['enableVtpm']! as bool).input(),
    );
  }
}

