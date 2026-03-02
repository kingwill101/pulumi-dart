// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Files or Blob Storage access information value for dictionary storage.
class AzureStorageInfoValueResponse {
  /// Access key for the storage account.
  final pulumi.Input<String>? accessKey;
  /// Name of the storage account.
  final pulumi.Input<String>? accountName;
  /// Path to mount the storage within the site's runtime environment.
  final pulumi.Input<String>? mountPath;
  /// Mounting protocol to use for the storage account.
  final pulumi.Input<String>? protocol;
  /// Name of the file share (container name, for Blob storage).
  final pulumi.Input<String>? shareName;
  /// State of the storage account.
  final pulumi.Input<String> state;
  /// Type of storage.
  final pulumi.Input<String>? type;

  /// Creates a new [AzureStorageInfoValueResponse].
  /// [accessKey] Access key for the storage account.
  /// [accountName] Name of the storage account.
  /// [mountPath] Path to mount the storage within the site's runtime environment.
  /// [protocol] Mounting protocol to use for the storage account.
  /// [shareName] Name of the file share (container name, for Blob storage).
  /// [state] State of the storage account.
  /// [type] Type of storage.
  AzureStorageInfoValueResponse({
    this.accessKey,
    this.accountName,
    this.mountPath,
    this.protocol,
    this.shareName,
    required this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'accountName': ?accountName,
      'mountPath': ?mountPath,
      'protocol': ?protocol,
      'shareName': ?shareName,
      'state': state,
      'type': ?type,
    };
  }

  factory AzureStorageInfoValueResponse.fromMap(Map<String, dynamic> map) {
    return AzureStorageInfoValueResponse(
      accessKey: map['accessKey'] == null ? null : (map['accessKey']! as String).input(),
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      mountPath: map['mountPath'] == null ? null : (map['mountPath']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName']! as String).input(),
      state: (map['state'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

