// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageAzureV2 Managed disk details.
class InMageAzureV2ManagedDiskDetailsResponse {
  /// The DiskEncryptionSet ARM ID.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The disk id.
  final pulumi.Input<String>? diskId;
  /// The replica disk type.
  final pulumi.Input<String>? replicaDiskType;
  /// Seed managed disk Id.
  final pulumi.Input<String>? seedManagedDiskId;
  /// The target disk name.
  final pulumi.Input<String>? targetDiskName;

  /// Creates a new [InMageAzureV2ManagedDiskDetailsResponse].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM ID.
  /// [diskId] The disk id.
  /// [replicaDiskType] The replica disk type.
  /// [seedManagedDiskId] Seed managed disk Id.
  /// [targetDiskName] The target disk name.
  InMageAzureV2ManagedDiskDetailsResponse({
    this.diskEncryptionSetId,
    this.diskId,
    this.replicaDiskType,
    this.seedManagedDiskId,
    this.targetDiskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': ?diskId,
      'replicaDiskType': ?replicaDiskType,
      'seedManagedDiskId': ?seedManagedDiskId,
      'targetDiskName': ?targetDiskName,
    };
  }

  factory InMageAzureV2ManagedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2ManagedDiskDetailsResponse(
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaDiskType: (() { final guardedValue = map['replicaDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seedManagedDiskId: (() { final guardedValue = map['seedManagedDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDiskName: (() { final guardedValue = map['targetDiskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

