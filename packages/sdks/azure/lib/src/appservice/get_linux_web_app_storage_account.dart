// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppStorageAccount {
  /// The Access key for the storage account.
  final String accessKey;
  /// The Name of the Storage Account.
  final String accountName;
  /// The path at which to mount the Storage Share.
  final String mountPath;
  /// The name of this Linux Web App.
  final String name;
  /// The Name of the File Share or Container Name for Blob storage.
  final String shareName;
  /// The Azure Storage Type.
  final String type;

  /// Creates a new [GetLinuxWebAppStorageAccount].
  /// [accessKey] The Access key for the storage account.
  /// [accountName] The Name of the Storage Account.
  /// [mountPath] The path at which to mount the Storage Share.
  /// [name] The name of this Linux Web App.
  /// [shareName] The Name of the File Share or Container Name for Blob storage.
  /// [type] The Azure Storage Type.
  GetLinuxWebAppStorageAccount({
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

  factory GetLinuxWebAppStorageAccount.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppStorageAccount(
      accessKey: map['accessKey'] as String,
      accountName: map['accountName'] as String,
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      shareName: map['shareName'] as String,
      type: map['type'] as String,
    );
  }
}

