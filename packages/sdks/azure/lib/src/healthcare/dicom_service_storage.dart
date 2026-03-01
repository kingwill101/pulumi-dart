// ignore_for_file: unused_element, unnecessary_cast


class DicomServiceStorage {
  /// The filesystem name of connected storage account. Changing this forces a new Healthcare DICOM Service to be created.
  final String fileSystemName;
  /// The resource ID of connected storage account. Changing this forces a new Healthcare DICOM Service to be created.
  ///
  /// > **Note:** The `is_hns_enabled` needs to be set to `true` for the storage account to be used with the Healthcare DICOM Service.
  final String storageAccountId;

  /// Creates a new [DicomServiceStorage].
  /// [fileSystemName] The filesystem name of connected storage account. Changing this forces a new Healthcare DICOM Service to be created.
  /// [storageAccountId] The resource ID of connected storage account. Changing this forces a new Healthcare DICOM Service to be created.
  DicomServiceStorage({
    required this.fileSystemName,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemName': fileSystemName,
      'storageAccountId': storageAccountId,
    };
  }

  factory DicomServiceStorage.fromMap(Map<String, dynamic> map) {
    return DicomServiceStorage(
      fileSystemName: map['fileSystemName'] as String,
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

