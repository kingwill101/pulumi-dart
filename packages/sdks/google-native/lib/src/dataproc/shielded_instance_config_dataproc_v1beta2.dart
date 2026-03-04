// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
class ShieldedInstanceConfigDataprocV1beta2 {
  /// Optional. Defines whether instances have integrity monitoring enabled.
  final pulumi.Input<bool>? enableIntegrityMonitoring;

  /// Optional. Defines whether instances have Secure Boot enabled.
  final pulumi.Input<bool>? enableSecureBoot;

  /// Optional. Defines whether instances have the vTPM enabled.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [ShieldedInstanceConfigDataprocV1beta2].
  /// [enableIntegrityMonitoring] Optional. Defines whether instances have integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Defines whether instances have Secure Boot enabled.
  /// [enableVtpm] Optional. Defines whether instances have the vTPM enabled.
  ShieldedInstanceConfigDataprocV1beta2({
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

  factory ShieldedInstanceConfigDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ShieldedInstanceConfigDataprocV1beta2(
      enableIntegrityMonitoring: (() {
        final guardedValue = map['enableIntegrityMonitoring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableSecureBoot: (() {
        final guardedValue = map['enableSecureBoot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableVtpm: (() {
        final guardedValue = map['enableVtpm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
