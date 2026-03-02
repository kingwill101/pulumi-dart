// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk details for E2A provider.
class AzureVmDiskDetailsResponse {
  /// The custom target Azure disk name.
  final pulumi.Input<String>? customTargetDiskName;
  /// The DiskEncryptionSet ARM ID.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The disk resource id.
  final pulumi.Input<String>? diskId;
  /// Ordinal\LunId of the disk for the Azure VM.
  final pulumi.Input<String>? lunId;
  /// Max side in MB.
  final pulumi.Input<String>? maxSizeMB;
  /// Blob uri of the Azure disk.
  final pulumi.Input<String>? targetDiskLocation;
  /// The target Azure disk name.
  final pulumi.Input<String>? targetDiskName;
  /// The VHD id.
  final pulumi.Input<String>? vhdId;
  /// VHD name.
  final pulumi.Input<String>? vhdName;
  /// VHD type.
  final pulumi.Input<String>? vhdType;

  /// Creates a new [AzureVmDiskDetailsResponse].
  /// [customTargetDiskName] The custom target Azure disk name.
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM ID.
  /// [diskId] The disk resource id.
  /// [lunId] Ordinal\LunId of the disk for the Azure VM.
  /// [maxSizeMB] Max side in MB.
  /// [targetDiskLocation] Blob uri of the Azure disk.
  /// [targetDiskName] The target Azure disk name.
  /// [vhdId] The VHD id.
  /// [vhdName] VHD name.
  /// [vhdType] VHD type.
  AzureVmDiskDetailsResponse({
    this.customTargetDiskName,
    this.diskEncryptionSetId,
    this.diskId,
    this.lunId,
    this.maxSizeMB,
    this.targetDiskLocation,
    this.targetDiskName,
    this.vhdId,
    this.vhdName,
    this.vhdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customTargetDiskName': ?customTargetDiskName,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': ?diskId,
      'lunId': ?lunId,
      'maxSizeMB': ?maxSizeMB,
      'targetDiskLocation': ?targetDiskLocation,
      'targetDiskName': ?targetDiskName,
      'vhdId': ?vhdId,
      'vhdName': ?vhdName,
      'vhdType': ?vhdType,
    };
  }

  factory AzureVmDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureVmDiskDetailsResponse(
      customTargetDiskName: map['customTargetDiskName'] == null ? null : (map['customTargetDiskName'] as String).input(),
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId'] as String).input(),
      diskId: map['diskId'] == null ? null : (map['diskId'] as String).input(),
      lunId: map['lunId'] == null ? null : (map['lunId'] as String).input(),
      maxSizeMB: map['maxSizeMB'] == null ? null : (map['maxSizeMB'] as String).input(),
      targetDiskLocation: map['targetDiskLocation'] == null ? null : (map['targetDiskLocation'] as String).input(),
      targetDiskName: map['targetDiskName'] == null ? null : (map['targetDiskName'] as String).input(),
      vhdId: map['vhdId'] == null ? null : (map['vhdId'] as String).input(),
      vhdName: map['vhdName'] == null ? null : (map['vhdName'] as String).input(),
      vhdType: map['vhdType'] == null ? null : (map['vhdType'] as String).input(),
    );
  }
}

