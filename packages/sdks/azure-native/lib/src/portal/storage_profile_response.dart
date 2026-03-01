// ignore_for_file: unused_element, unnecessary_cast


/// The storage profile of the user settings.
class StorageProfileResponse {
  /// Size of file share
  final int? diskSizeInGB;
  /// Name of the mounted file share. 63 characters or less, lowercase alphabet, numbers, and -
  final String? fileShareName;
  /// Full resource ID of storage account.
  final String? storageAccountResourceId;

  /// Creates a new [StorageProfileResponse].
  /// [diskSizeInGB] Size of file share
  /// [fileShareName] Name of the mounted file share. 63 characters or less, lowercase alphabet, numbers, and -
  /// [storageAccountResourceId] Full resource ID of storage account.
  StorageProfileResponse({
    this.diskSizeInGB,
    this.fileShareName,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeInGB': ?diskSizeInGB,
      'fileShareName': ?fileShareName,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      diskSizeInGB: map['diskSizeInGB'] == null ? null : map['diskSizeInGB'] as int,
      fileShareName: map['fileShareName'] == null ? null : map['fileShareName'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : map['storageAccountResourceId'] as String,
    );
  }
}

