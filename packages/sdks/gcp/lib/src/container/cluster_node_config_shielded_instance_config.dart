// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigShieldedInstanceConfig {
  /// Defines if the instance has integrity monitoring enabled.
  ///
  /// Enables monitoring and attestation of the boot integrity of the instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the instance is created.  Defaults to `true`.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// Defines if the instance has Secure Boot enabled.
  ///
  /// Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails.  Defaults to `false`.
  final pulumi.Input<bool>? enableSecureBoot;

  /// Creates a new [ClusterNodeConfigShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines if the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Defines if the instance has Secure Boot enabled.
  ClusterNodeConfigShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': ?enableIntegrityMonitoring,
      'enableSecureBoot': ?enableSecureBoot,
    };
  }

  factory ClusterNodeConfigShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigShieldedInstanceConfig(
      enableIntegrityMonitoring: (() { final guardedValue = map['enableIntegrityMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSecureBoot: (() { final guardedValue = map['enableSecureBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

