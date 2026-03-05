// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a storage account connection.
class StorageAccountResponse {
  /// The Azure Resource Manager ID of the storage account resource.
  final pulumi.Input<String> id;
  /// The storage account key.
  final pulumi.Input<String> key;

  /// Creates a new [StorageAccountResponse].
  /// [id] The Azure Resource Manager ID of the storage account resource.
  /// [key] The storage account key.
  StorageAccountResponse({
    required this.id,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'key': key,
    };
  }

  factory StorageAccountResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

