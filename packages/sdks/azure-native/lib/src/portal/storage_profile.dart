// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage profile of the user settings.
class StorageProfile {
  /// Size of file share
  final pulumi.Input<int>? diskSizeInGB;
  /// Name of the mounted file share. 63 characters or less, lowercase alphabet, numbers, and -
  final pulumi.Input<String>? fileShareName;
  /// Full resource ID of storage account.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [StorageProfile].
  /// [diskSizeInGB] Size of file share
  /// [fileShareName] Name of the mounted file share. 63 characters or less, lowercase alphabet, numbers, and -
  /// [storageAccountResourceId] Full resource ID of storage account.
  const StorageProfile({
    this.diskSizeInGB,
    this.fileShareName,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeInGB': ?diskSizeInGB,
      'fileShareName': ?fileShareName,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      diskSizeInGB: (() { final guardedValue = map['diskSizeInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fileShareName: (() { final guardedValue = map['fileShareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountResourceId: (() { final guardedValue = map['storageAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
