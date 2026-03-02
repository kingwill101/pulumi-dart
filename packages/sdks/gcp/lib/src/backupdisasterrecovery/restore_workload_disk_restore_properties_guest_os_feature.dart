// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadDiskRestorePropertiesGuestOsFeature {
  /// Possible values are: `FEATURE_TYPE_UNSPECIFIED`, `VIRTIO_SCSI_MULTIQUEUE`, `WINDOWS`, `MULTI_IP_SUBNET`, `UEFI_COMPATIBLE`, `SECURE_BOOT`, `GVNIC`, `SEV_CAPABLE`, `BARE_METAL_LINUX_COMPATIBLE`, `SUSPEND_RESUME_COMPATIBLE`, `SEV_LIVE_MIGRATABLE`, `SEV_SNP_CAPABLE`, `TDX_CAPABLE`, `IDPF`, `SEV_LIVE_MIGRATABLE_V2`.
  final pulumi.Input<String>? type;

  /// Creates a new [RestoreWorkloadDiskRestorePropertiesGuestOsFeature].
  /// [type] Possible values are: `FEATURE_TYPE_UNSPECIFIED`, `VIRTIO_SCSI_MULTIQUEUE`, `WINDOWS`, `MULTI_IP_SUBNET`, `UEFI_COMPATIBLE`, `SECURE_BOOT`, `GVNIC`, `SEV_CAPABLE`, `BARE_METAL_LINUX_COMPATIBLE`, `SUSPEND_RESUME_COMPATIBLE`, `SEV_LIVE_MIGRATABLE`, `SEV_SNP_CAPABLE`, `TDX_CAPABLE`, `IDPF`, `SEV_LIVE_MIGRATABLE_V2`.
  RestoreWorkloadDiskRestorePropertiesGuestOsFeature({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory RestoreWorkloadDiskRestorePropertiesGuestOsFeature.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadDiskRestorePropertiesGuestOsFeature(
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

