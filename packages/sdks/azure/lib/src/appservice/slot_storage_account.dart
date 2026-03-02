// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotStorageAccount {
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

  /// Creates a new [SlotStorageAccount].
  /// [accessKey] The access key for the storage account.
  /// [accountName] The name of the storage account.
  /// [mountPath] The path to mount the storage within the site's runtime environment.
  /// [name] The name of the storage account identifier.
  /// [shareName] The name of the file share (container name, for Blob storage).
  /// [type] The type of storage. Possible values are `AzureBlob` and `AzureFiles`.
  SlotStorageAccount({
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

  factory SlotStorageAccount.fromMap(Map<String, dynamic> map) {
    return SlotStorageAccount(
      accessKey: (map['accessKey'] as String).input(),
      accountName: (map['accountName'] as String).input(),
      mountPath: map['mountPath'] == null ? null : (map['mountPath'] as String).input(),
      name: (map['name'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

