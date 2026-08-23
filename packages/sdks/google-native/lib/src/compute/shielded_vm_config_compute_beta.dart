// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Shielded VM options.
class ShieldedVmConfigComputeBeta {
  /// Defines whether the instance has integrity monitoring enabled.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled.
  final pulumi.Input<bool>? enableSecureBoot;
  /// Defines whether the instance has the vTPM enabled.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [ShieldedVmConfigComputeBeta].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  /// [enableVtpm] Defines whether the instance has the vTPM enabled.
  const ShieldedVmConfigComputeBeta({
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

  factory ShieldedVmConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShieldedVmConfigComputeBeta(
      enableIntegrityMonitoring: (() { final guardedValue = map['enableIntegrityMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSecureBoot: (() { final guardedValue = map['enableSecureBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableVtpm: (() { final guardedValue = map['enableVtpm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
