// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppStorageAccount {
  /// The Access key for the storage account.
  final pulumi.Input<String> accessKey;
  /// The Name of the Storage Account.
  final pulumi.Input<String> accountName;
  /// The path at which to mount the Storage Share.
  final pulumi.Input<String> mountPath;
  /// The name of this Windows Web App.
  final pulumi.Input<String> name;
  /// The Name of the File Share.
  final pulumi.Input<String> shareName;
  /// The Azure Storage Type.
  final pulumi.Input<String> type;

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
      accessKey: (map['accessKey'] as String).input(),
      accountName: (map['accountName'] as String).input(),
      mountPath: (map['mountPath'] as String).input(),
      name: (map['name'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

