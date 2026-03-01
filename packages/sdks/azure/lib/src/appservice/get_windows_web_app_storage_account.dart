// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppStorageAccount {
  /// The Access key for the storage account.
  final String accessKey;
  /// The Name of the Storage Account.
  final String accountName;
  /// The path at which to mount the Storage Share.
  final String mountPath;
  /// The name of this Windows Web App.
  final String name;
  /// The Name of the File Share.
  final String shareName;
  /// The Azure Storage Type.
  final String type;

  /// Creates a new [GetWindowsWebAppStorageAccount].
  /// [accessKey] The Access key for the storage account.
  /// [accountName] The Name of the Storage Account.
  /// [mountPath] The path at which to mount the Storage Share.
  /// [name] The name of this Windows Web App.
  /// [shareName] The Name of the File Share.
  /// [type] The Azure Storage Type.
  GetWindowsWebAppStorageAccount({
    required this.accessKey,
    required this.accountName,
    required this.mountPath,
    required this.name,
    required this.shareName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'accountName': accountName,
      'mountPath': mountPath,
      'name': name,
      'shareName': shareName,
      'type': type,
    };
  }

  factory GetWindowsWebAppStorageAccount.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppStorageAccount(
      accessKey: map['accessKey'] as String,
      accountName: map['accountName'] as String,
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      shareName: map['shareName'] as String,
      type: map['type'] as String,
    );
  }
}

