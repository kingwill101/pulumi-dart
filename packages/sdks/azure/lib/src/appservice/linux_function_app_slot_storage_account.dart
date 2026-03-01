// ignore_for_file: unused_element, unnecessary_cast


class LinuxFunctionAppSlotStorageAccount {
  /// The Access key for the storage account.
  final String accessKey;
  /// The Name of the Storage Account.
  final String accountName;
  /// The path at which to mount the storage share.
  final String? mountPath;
  /// The name which should be used for this Storage Account.
  final String name;
  /// The Name of the File Share or Container Name for Blob storage.
  final String shareName;
  /// The Azure Storage Type. Possible values include `AzureFiles` and `AzureBlob`.
  final String type;

  /// Creates a new [LinuxFunctionAppSlotStorageAccount].
  /// [accessKey] The Access key for the storage account.
  /// [accountName] The Name of the Storage Account.
  /// [mountPath] The path at which to mount the storage share.
  /// [name] The name which should be used for this Storage Account.
  /// [shareName] The Name of the File Share or Container Name for Blob storage.
  /// [type] The Azure Storage Type. Possible values include `AzureFiles` and `AzureBlob`.
  LinuxFunctionAppSlotStorageAccount({
    required this.accessKey,
    required this.accountName,
    this.mountPath,
    required this.name,
    required this.shareName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'accountName': accountName,
      'mountPath': ?mountPath,
      'name': name,
      'shareName': shareName,
      'type': type,
    };
  }

  factory LinuxFunctionAppSlotStorageAccount.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotStorageAccount(
      accessKey: map['accessKey'] as String,
      accountName: map['accountName'] as String,
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      name: map['name'] as String,
      shareName: map['shareName'] as String,
      type: map['type'] as String,
    );
  }
}

