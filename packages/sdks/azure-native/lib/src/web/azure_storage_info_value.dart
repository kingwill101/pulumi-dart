// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_storage_type.dart';

/// Azure Files or Blob Storage access information value for dictionary storage.
class AzureStorageInfoValue {
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

  /// Type of storage.
  final pulumi.Input<AzureStorageType>? type;

  /// Creates a new [AzureStorageInfoValue].
  /// [accessKey] Access key for the storage account.
  /// [accountName] Name of the storage account.
  /// [mountPath] Path to mount the storage within the site's runtime environment.
  /// [protocol] Mounting protocol to use for the storage account.
  /// [shareName] Name of the file share (container name, for Blob storage).
  /// [type] Type of storage.
  AzureStorageInfoValue({
    this.accessKey,
    this.accountName,
    this.mountPath,
    this.protocol,
    this.shareName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'accountName': ?accountName,
      'mountPath': ?mountPath,
      'protocol': ?protocol,
      'shareName': ?shareName,
      'type': ?pulumi.Input.mapOptionalInputValue<AzureStorageType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory AzureStorageInfoValue.fromMap(Map<String, dynamic> map) {
    return AzureStorageInfoValue(
      accessKey: (() {
        final guardedValue = map['accessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: (() {
        final guardedValue = map['accountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountPath: (() {
        final guardedValue = map['mountPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shareName: (() {
        final guardedValue = map['shareName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureStorageType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
