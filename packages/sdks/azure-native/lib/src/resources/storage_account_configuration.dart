// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings to use an existing storage account. Valid storage account kinds are: Storage, StorageV2 and FileStorage
class StorageAccountConfiguration {
  /// The storage account access key.
  final pulumi.Input<String>? storageAccountKey;
  /// The storage account name.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [StorageAccountConfiguration].
  /// [storageAccountKey] The storage account access key.
  /// [storageAccountName] The storage account name.
  StorageAccountConfiguration({
    this.storageAccountKey,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory StorageAccountConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageAccountConfiguration(
      storageAccountKey: map['storageAccountKey'] == null ? null : (map['storageAccountKey'] as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName'] as String).input(),
    );
  }
}

