// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetPacketCaptureStorageLocation {
  /// A valid local path on the targeting VM. Must include the name of the capture file (*.cap). For Linux virtual machine it must start with `/var/captures`.
  final String? filePath;
  /// The ID of the storage account to save the packet capture session
  ///
  /// > **Note:** At least one of `file_path` or `storage_account_id` must be specified.
  final String? storageAccountId;
  /// The URI of the storage path where the packet capture sessions are saved to.
  final String? storagePath;

  /// Creates a new [ScaleSetPacketCaptureStorageLocation].
  /// [filePath] A valid local path on the targeting VM. Must include the name of the capture file (*.cap). For Linux virtual machine it must start with `/var/captures`.
  /// [storageAccountId] The ID of the storage account to save the packet capture session
  /// [storagePath] The URI of the storage path where the packet capture sessions are saved to.
  ScaleSetPacketCaptureStorageLocation({
    this.filePath,
    this.storageAccountId,
    this.storagePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': ?filePath,
      'storageAccountId': ?storageAccountId,
      'storagePath': ?storagePath,
    };
  }

  factory ScaleSetPacketCaptureStorageLocation.fromMap(Map<String, dynamic> map) {
    return ScaleSetPacketCaptureStorageLocation(
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      storagePath: map['storagePath'] == null ? null : map['storagePath'] as String,
    );
  }
}

