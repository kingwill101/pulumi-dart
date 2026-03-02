// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage profile of the user settings.
class StorageProfileResponse {
  /// Size of file share
  final pulumi.Input<int>? diskSizeInGB;
  /// Name of the mounted file share. 63 characters or less, lowercase alphabet, numbers, and -
  final pulumi.Input<String>? fileShareName;
  /// Full resource ID of storage account.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [StorageProfileResponse].
  /// [diskSizeInGB] Size of file share
  /// [fileShareName] Name of the mounted file share. 63 characters or less, lowercase alphabet, numbers, and -
  /// [storageAccountResourceId] Full resource ID of storage account.
  StorageProfileResponse({
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

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      diskSizeInGB: map['diskSizeInGB'] == null ? null : (map['diskSizeInGB']! as int).input(),
      fileShareName: map['fileShareName'] == null ? null : (map['fileShareName']! as String).input(),
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : (map['storageAccountResourceId']! as String).input(),
    );
  }
}

