// ignore_for_file: unused_element, unnecessary_cast


/// VMwareCbt disk input.
class VMwareCbtDiskInput {
  /// The DiskEncryptionSet ARM Id.
  final String? diskEncryptionSetId;
  /// The disk Id.
  final String diskId;
  /// The disk type.
  final String? diskType;
  /// A value indicating whether the disk is the OS disk.
  final String isOSDisk;
  /// The log storage account ARM Id.
  final String logStorageAccountId;
  /// The key vault secret name of the log storage account.
  final String logStorageAccountSasSecretName;
  /// The logical sector size (in bytes), 512 by default.
  final int? sectorSizeInBytes;

  /// Creates a new [VMwareCbtDiskInput].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM Id.
  /// [diskId] The disk Id.
  /// [diskType] The disk type.
  /// [isOSDisk] A value indicating whether the disk is the OS disk.
  /// [logStorageAccountId] The log storage account ARM Id.
  /// [logStorageAccountSasSecretName] The key vault secret name of the log storage account.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  VMwareCbtDiskInput({
    this.diskEncryptionSetId,
    required this.diskId,
    this.diskType,
    required this.isOSDisk,
    required this.logStorageAccountId,
    required this.logStorageAccountSasSecretName,
    this.sectorSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': diskId,
      'diskType': ?diskType,
      'isOSDisk': isOSDisk,
      'logStorageAccountId': logStorageAccountId,
      'logStorageAccountSasSecretName': logStorageAccountSasSecretName,
      'sectorSizeInBytes': ?sectorSizeInBytes,
    };
  }

  factory VMwareCbtDiskInput.fromMap(Map<String, dynamic> map) {
    return VMwareCbtDiskInput(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskId: map['diskId'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      isOSDisk: map['isOSDisk'] as String,
      logStorageAccountId: map['logStorageAccountId'] as String,
      logStorageAccountSasSecretName: map['logStorageAccountSasSecretName'] as String,
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : map['sectorSizeInBytes'] as int,
    );
  }
}

