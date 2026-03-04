// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hyper-V Managed disk details.
class HyperVReplicaAzureManagedDiskDetailsResponse {
  /// The disk encryption set ARM Id.
  final pulumi.Input<String>? diskEncryptionSetId;

  /// The disk Id.
  final pulumi.Input<String>? diskId;

  /// The replica disk type.
  final pulumi.Input<String>? replicaDiskType;

  /// The logical sector size (in bytes), 512 by default.
  final pulumi.Input<int>? sectorSizeInBytes;

  /// Seed managed disk Id.
  final pulumi.Input<String>? seedManagedDiskId;

  /// The disk type.
  final pulumi.Input<String>? targetDiskAccountType;

  /// Creates a new [HyperVReplicaAzureManagedDiskDetailsResponse].
  /// [diskEncryptionSetId] The disk encryption set ARM Id.
  /// [diskId] The disk Id.
  /// [replicaDiskType] The replica disk type.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  /// [seedManagedDiskId] Seed managed disk Id.
  /// [targetDiskAccountType] The disk type.
  HyperVReplicaAzureManagedDiskDetailsResponse({
    this.diskEncryptionSetId,
    this.diskId,
    this.replicaDiskType,
    this.sectorSizeInBytes,
    this.seedManagedDiskId,
    this.targetDiskAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': ?diskId,
      'replicaDiskType': ?replicaDiskType,
      'sectorSizeInBytes': ?sectorSizeInBytes,
      'seedManagedDiskId': ?seedManagedDiskId,
      'targetDiskAccountType': ?targetDiskAccountType,
    };
  }

  factory HyperVReplicaAzureManagedDiskDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return HyperVReplicaAzureManagedDiskDetailsResponse(
      diskEncryptionSetId: (() {
        final guardedValue = map['diskEncryptionSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskId: (() {
        final guardedValue = map['diskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicaDiskType: (() {
        final guardedValue = map['replicaDiskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sectorSizeInBytes: (() {
        final guardedValue = map['sectorSizeInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      seedManagedDiskId: (() {
        final guardedValue = map['seedManagedDiskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetDiskAccountType: (() {
        final guardedValue = map['targetDiskAccountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
