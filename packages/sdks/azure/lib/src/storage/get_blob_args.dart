// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_blob_get_blob_args_doc}
/// Arguments for getBlob.
/// {@endtemplate}
/// {@macro pulumi_storage_get_blob_get_blob_args_doc}
class GetBlobArgs {
  /// A map of custom blob metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the Blob.
  final pulumi.Input<String> name;
  /// The name of the Storage Account where the Container exists.
  final pulumi.Input<String> storageAccountName;
  /// The name of the Storage Container where the Blob exists.
  final pulumi.Input<String> storageContainerName;

  /// Creates a new [GetBlobArgs].
  /// [metadata] A map of custom blob metadata.
  /// [name] The name of the Blob.
  /// [storageAccountName] The name of the Storage Account where the Container exists.
  /// [storageContainerName] The name of the Storage Container where the Blob exists.
  GetBlobArgs({
    this.metadata,
    required this.name,
    required this.storageAccountName,
    required this.storageContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'name': name,
      'storageAccountName': storageAccountName,
      'storageContainerName': storageContainerName,
    };
  }

  factory GetBlobArgs.fromMap(Map<String, dynamic> map) {
    return GetBlobArgs(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      storageContainerName: pulumi.Input.fromValue(map['storageContainerName'] as String),
    );
  }
}

