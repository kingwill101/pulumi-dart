// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcm disk input.
class InMageRcmDisksDefaultInput {
  /// The DiskEncryptionSet ARM Id.
  final String? diskEncryptionSetId;
  /// The disk type.
  final String diskType;
  /// The log storage account ARM Id.
  final String logStorageAccountId;
  /// The logical sector size (in bytes), 512 by default.
  final int? sectorSizeInBytes;

  /// Creates a new [InMageRcmDisksDefaultInput].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM Id.
  /// [diskType] The disk type.
  /// [logStorageAccountId] The log storage account ARM Id.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  InMageRcmDisksDefaultInput({
    this.diskEncryptionSetId,
    required this.diskType,
    required this.logStorageAccountId,
    this.sectorSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskType': diskType,
      'logStorageAccountId': logStorageAccountId,
      'sectorSizeInBytes': ?sectorSizeInBytes,
    };
  }

  factory InMageRcmDisksDefaultInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmDisksDefaultInput(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskType: map['diskType'] as String,
      logStorageAccountId: map['logStorageAccountId'] as String,
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : map['sectorSizeInBytes'] as int,
    );
  }
}

