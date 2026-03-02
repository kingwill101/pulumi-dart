// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponseContainerV1beta1 {
  /// Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the instance is created.
  final pulumi.Input<bool> enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails.
  final pulumi.Input<bool> enableSecureBoot;

  /// Creates a new [ShieldedInstanceConfigResponseContainerV1beta1].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the instance is created.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails.
  ShieldedInstanceConfigResponseContainerV1beta1({
    required this.enableIntegrityMonitoring,
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': enableIntegrityMonitoring,
      'enableSecureBoot': enableSecureBoot,
    };
  }

  factory ShieldedInstanceConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponseContainerV1beta1(
      enableIntegrityMonitoring: (map['enableIntegrityMonitoring'] as bool).input(),
      enableSecureBoot: (map['enableSecureBoot'] as bool).input(),
    );
  }
}

