// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGceSetupDataDisks {
  /// Optional. Input only. Disk encryption method used on the boot
  /// and data disks, defaults to GMEK.
  /// Possible values are: `GMEK`, `CMEK`.
  final pulumi.Input<String?>? diskEncryption;
  /// Optional. The size of the disk in GB attached to this VM instance,
  /// up to a maximum of 64000 GB (64 TB). If not specified, this defaults to
  /// 100.
  final pulumi.Input<String?>? diskSizeGb;
  /// Optional. Input only. Indicates the type of the disk.
  /// Possible values are: `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`, `HYPERDISK_BALANCED`, `HYPERDISK_EXTREME`, `HYPERDISK_THROUGHPUT`, `HYPERDISK_BALANCED_HIGH_AVAILABILITY`, `HYPERDISK_ML`.
  final pulumi.Input<String?>? diskType;
  /// 'Optional. The KMS key used to encrypt the disks,
  /// only applicable if diskEncryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}`
  /// Learn more about using your own encryption keys.'
  final pulumi.Input<String?>? kmsKey;
  /// Optional. Resource policies applied to this disk.
  final pulumi.Input<List<String>?>? resourcePolicies;

  /// Creates a new [InstanceGceSetupDataDisks].
  /// [diskEncryption] Optional. Input only. Disk encryption method used on the boot
  /// [diskSizeGb] Optional. The size of the disk in GB attached to this VM instance,
  /// [diskType] Optional. Input only. Indicates the type of the disk.
  /// [kmsKey] 'Optional. The KMS key used to encrypt the disks,
  /// [resourcePolicies] Optional. Resource policies applied to this disk.
  const InstanceGceSetupDataDisks({
    this.diskEncryption,
    this.diskSizeGb,
    this.diskType,
    this.kmsKey,
    this.resourcePolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryption': ?diskEncryption,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'kmsKey': ?kmsKey,
      'resourcePolicies': ?resourcePolicies,
    };
  }

  factory InstanceGceSetupDataDisks.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupDataDisks(
      diskEncryption: (() { final guardedValue = map['diskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
