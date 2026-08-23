// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponseComputeBeta {
  /// Defines whether the instance has integrity monitoring enabled. Enabled by default.
  final pulumi.Input<bool> enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled. Disabled by default.
  final pulumi.Input<bool> enableSecureBoot;
  /// Defines whether the instance has the vTPM enabled. Enabled by default.
  final pulumi.Input<bool> enableVtpm;

  /// Creates a new [ShieldedInstanceConfigResponseComputeBeta].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled. Enabled by default.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled. Disabled by default.
  /// [enableVtpm] Defines whether the instance has the vTPM enabled. Enabled by default.
  const ShieldedInstanceConfigResponseComputeBeta({
    required this.enableIntegrityMonitoring,
    required this.enableSecureBoot,
    required this.enableVtpm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': enableIntegrityMonitoring,
      'enableSecureBoot': enableSecureBoot,
      'enableVtpm': enableVtpm,
    };
  }

  factory ShieldedInstanceConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponseComputeBeta(
      enableIntegrityMonitoring: pulumi.Input.fromValue(map['enableIntegrityMonitoring'] as bool),
      enableSecureBoot: pulumi.Input.fromValue(map['enableSecureBoot'] as bool),
      enableVtpm: pulumi.Input.fromValue(map['enableVtpm'] as bool),
    );
  }
}
