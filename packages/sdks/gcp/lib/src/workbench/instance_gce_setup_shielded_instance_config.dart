// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGceSetupShieldedInstanceConfig {
  /// Optional. Defines whether the VM instance has integrity monitoring
  /// enabled. Enables monitoring and attestation of the boot integrity of the VM
  /// instance. The attestation is performed against the integrity policy baseline.
  /// This baseline is initially derived from the implicitly trusted boot image
  /// when the VM instance is created. Enabled by default.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// Optional. Defines whether the VM instance has Secure Boot enabled.
  /// Secure Boot helps ensure that the system only runs authentic software by verifying
  /// the digital signature of all boot components, and halting the boot process
  /// if signature verification fails. Disabled by default.
  final pulumi.Input<bool>? enableSecureBoot;
  /// Optional. Defines whether the VM instance has the vTPM enabled.
  /// Enabled by default.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [InstanceGceSetupShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Optional. Defines whether the VM instance has integrity monitoring
  /// [enableSecureBoot] Optional. Defines whether the VM instance has Secure Boot enabled.
  /// [enableVtpm] Optional. Defines whether the VM instance has the vTPM enabled.
  InstanceGceSetupShieldedInstanceConfig({
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

  factory InstanceGceSetupShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : (map['enableIntegrityMonitoring'] as bool).input(),
      enableSecureBoot: map['enableSecureBoot'] == null ? null : (map['enableSecureBoot'] as bool).input(),
      enableVtpm: map['enableVtpm'] == null ? null : (map['enableVtpm'] as bool).input(),
    );
  }
}

