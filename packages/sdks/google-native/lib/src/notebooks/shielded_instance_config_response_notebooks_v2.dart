// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Shielded Instance options. See [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm). Not all combinations are valid.
class ShieldedInstanceConfigResponseNotebooksV2 {
  /// Optional. Defines whether the VM instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the VM instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the VM instance is created. Enabled by default.
  final pulumi.Input<bool> enableIntegrityMonitoring;
  /// Optional. Defines whether the VM instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails. Disabled by default.
  final pulumi.Input<bool> enableSecureBoot;
  /// Optional. Defines whether the VM instance has the vTPM enabled. Enabled by default.
  final pulumi.Input<bool> enableVtpm;

  /// Creates a new [ShieldedInstanceConfigResponseNotebooksV2].
  /// [enableIntegrityMonitoring] Optional. Defines whether the VM instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the VM instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the VM instance is created. Enabled by default.
  /// [enableSecureBoot] Optional. Defines whether the VM instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails. Disabled by default.
  /// [enableVtpm] Optional. Defines whether the VM instance has the vTPM enabled. Enabled by default.
  ShieldedInstanceConfigResponseNotebooksV2({
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

  factory ShieldedInstanceConfigResponseNotebooksV2.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponseNotebooksV2(
      enableIntegrityMonitoring: (map['enableIntegrityMonitoring'] as bool).input(),
      enableSecureBoot: (map['enableSecureBoot'] as bool).input(),
      enableVtpm: (map['enableVtpm'] as bool).input(),
    );
  }
}

