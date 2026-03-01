// ignore_for_file: unused_element, unnecessary_cast


/// Disk details for E2A provider.
class AzureVmDiskDetailsResponse {
  /// The custom target Azure disk name.
  final String? customTargetDiskName;
  /// The DiskEncryptionSet ARM ID.
  final String? diskEncryptionSetId;
  /// The disk resource id.
  final String? diskId;
  /// Ordinal\LunId of the disk for the Azure VM.
  final String? lunId;
  /// Max side in MB.
  final String? maxSizeMB;
  /// Blob uri of the Azure disk.
  final String? targetDiskLocation;
  /// The target Azure disk name.
  final String? targetDiskName;
  /// The VHD id.
  final String? vhdId;
  /// VHD name.
  final String? vhdName;
  /// VHD type.
  final String? vhdType;

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
      customTargetDiskName: map['customTargetDiskName'] == null ? null : map['customTargetDiskName'] as String,
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      lunId: map['lunId'] == null ? null : map['lunId'] as String,
      maxSizeMB: map['maxSizeMB'] == null ? null : map['maxSizeMB'] as String,
      targetDiskLocation: map['targetDiskLocation'] == null ? null : map['targetDiskLocation'] as String,
      targetDiskName: map['targetDiskName'] == null ? null : map['targetDiskName'] as String,
      vhdId: map['vhdId'] == null ? null : map['vhdId'] as String,
      vhdName: map['vhdName'] == null ? null : map['vhdName'] as String,
      vhdType: map['vhdType'] == null ? null : map['vhdType'] as String,
    );
  }
}

