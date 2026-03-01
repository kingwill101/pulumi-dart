// ignore_for_file: unused_element, unnecessary_cast


/// Settings to use an existing storage account. Valid storage account kinds are: Storage, StorageV2 and FileStorage
class StorageAccountConfigurationResponse {
  /// The storage account access key.
  final String? storageAccountKey;
  /// The storage account name.
  final String? storageAccountName;

  /// Creates a new [StorageAccountConfigurationResponse].
  /// [storageAccountKey] The storage account access key.
  /// [storageAccountName] The storage account name.
  StorageAccountConfigurationResponse({
    this.storageAccountKey,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory StorageAccountConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountConfigurationResponse(
      storageAccountKey: map['storageAccountKey'] == null ? null : map['storageAccountKey'] as String,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
    );
  }
}

