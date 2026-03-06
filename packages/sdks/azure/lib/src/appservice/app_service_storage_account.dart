// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceStorageAccount {
  /// The access key for the storage account.
  final pulumi.Input<String> accessKey;
  /// The name of the storage account.
  final pulumi.Input<String> accountName;
  /// The path to mount the storage within the site's runtime environment.
  final pulumi.Input<String>? mountPath;
  /// The name of the storage account identifier.
  final pulumi.Input<String> name;
  /// The name of the file share (container name, for Blob storage).
  final pulumi.Input<String> shareName;
  /// The type of storage. Possible values are `AzureBlob` and `AzureFiles`.
  final pulumi.Input<String> type;

  /// Creates a new [AppServiceStorageAccount].
  /// [accessKey] The access key for the storage account.
  /// [accountName] The name of the storage account.
  /// [mountPath] The path to mount the storage within the site's runtime environment.
  /// [name] The name of the storage account identifier.
  /// [shareName] The name of the file share (container name, for Blob storage).
  /// [type] The type of storage. Possible values are `AzureBlob` and `AzureFiles`.
  const AppServiceStorageAccount({
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

  factory AppServiceStorageAccount.fromMap(Map<String, dynamic> map) {
    return AppServiceStorageAccount(
      accessKey: pulumi.Input.fromValue(map['accessKey'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

