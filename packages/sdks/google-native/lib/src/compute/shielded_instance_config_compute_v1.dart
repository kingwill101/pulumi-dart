// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Shielded Instance options.
class ShieldedInstanceConfigComputeV1 {
  /// Defines whether the instance has integrity monitoring enabled. Enabled by default.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled. Disabled by default.
  final pulumi.Input<bool>? enableSecureBoot;
  /// Defines whether the instance has the vTPM enabled. Enabled by default.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [ShieldedInstanceConfigComputeV1].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled. Enabled by default.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled. Disabled by default.
  /// [enableVtpm] Defines whether the instance has the vTPM enabled. Enabled by default.
  ShieldedInstanceConfigComputeV1({
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

  factory ShieldedInstanceConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigComputeV1(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : (map['enableIntegrityMonitoring']! as bool).input(),
      enableSecureBoot: map['enableSecureBoot'] == null ? null : (map['enableSecureBoot']! as bool).input(),
      enableVtpm: map['enableVtpm'] == null ? null : (map['enableVtpm']! as bool).input(),
    );
  }
}

