// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
  /// boot integrity of the instance. The attestation is performed against the integrity policy baseline.
  /// This baseline is initially derived from the implicitly trusted boot image when the instance is created.
  /// Enabled by default.
  final pulumi.Input<bool>? enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
  /// authentic software by verifying the digital signature of all boot components, and halting the boot process
  /// if signature verification fails.
  /// Disabled by default.
  final pulumi.Input<bool>? enableSecureBoot;

  /// Defines whether the instance has the vTPM enabled.
  /// Enabled by default.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [InstanceShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
  /// [enableVtpm] Defines whether the instance has the vTPM enabled.
  InstanceShieldedInstanceConfig({
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

  factory InstanceShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceShieldedInstanceConfig(
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
