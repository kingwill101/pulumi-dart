// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage details of all the Storage accounts attached to the VM. For e.g. NFS on AFS Shared Storage.
class StorageInformationResponse {
  /// Fully qualified resource ID for the storage account.
  final pulumi.Input<String> id;

  /// Creates a new [StorageInformationResponse].
  /// [id] Fully qualified resource ID for the storage account.
  const StorageInformationResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory StorageInformationResponse.fromMap(Map<String, dynamic> map) {
    return StorageInformationResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

