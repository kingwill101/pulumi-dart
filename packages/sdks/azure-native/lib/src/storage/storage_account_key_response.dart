// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An access key for the storage account.
class StorageAccountKeyResponse {
  /// Creation time of the key, in round trip date format.
  final pulumi.Input<String> creationTime;
  /// Name of the key.
  final pulumi.Input<String> keyName;
  /// Permissions for the key -- read-only or full permissions.
  final pulumi.Input<String> permissions;
  /// Base 64-encoded value of the key.
  final pulumi.Input<String> value;

  /// Creates a new [StorageAccountKeyResponse].
  /// [creationTime] Creation time of the key, in round trip date format.
  /// [keyName] Name of the key.
  /// [permissions] Permissions for the key -- read-only or full permissions.
  /// [value] Base 64-encoded value of the key.
  StorageAccountKeyResponse({
    required this.creationTime,
    required this.keyName,
    required this.permissions,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'keyName': keyName,
      'permissions': permissions,
      'value': value,
    };
  }

  factory StorageAccountKeyResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountKeyResponse(
      creationTime: (map['creationTime'] as String).input(),
      keyName: (map['keyName'] as String).input(),
      permissions: (map['permissions'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

