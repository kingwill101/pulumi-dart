// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceShieldedInstanceConfig {
  /// - Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail results depending on whether they match or not. Defaults to true.
  /// **Note**: `allowStoppingForUpdate` must be set to true or your instance must have a `desiredStatus` of `TERMINATED` in order to update this field.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// - Verify the digital signature of all boot components, and halt the boot process if signature verification fails. Defaults to false.
  /// **Note**: `allowStoppingForUpdate` must be set to true or your instance must have a `desiredStatus` of `TERMINATED` in order to update this field.
  final pulumi.Input<bool>? enableSecureBoot;
  /// - Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates. Defaults to true.
  /// **Note**: `allowStoppingForUpdate` must be set to true or your instance must have a `desiredStatus` of `TERMINATED` in order to update this field.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [InstanceShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] - Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail results depending on whether they match or not. Defaults to true.
  /// [enableSecureBoot] - Verify the digital signature of all boot components, and halt the boot process if signature verification fails. Defaults to false.
  /// [enableVtpm] - Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates. Defaults to true.
  const InstanceShieldedInstanceConfig({
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
      enableIntegrityMonitoring: (() { final guardedValue = map['enableIntegrityMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSecureBoot: (() { final guardedValue = map['enableSecureBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableVtpm: (() { final guardedValue = map['enableVtpm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
