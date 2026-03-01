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
    pulumi.Output<Map<String, String>>? metadata,
    required pulumi.Output<String> name,
    required pulumi.Output<String> storageAccountName,
    required pulumi.Output<String> storageContainerName,
  }) :
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asInput<String>(name),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      storageContainerName = pulumi.Input.asInput<String>(storageContainerName);

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
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Output.create<String>(map['name'] as String),
      storageAccountName: pulumi.Output.create<String>(map['storageAccountName'] as String),
      storageContainerName: pulumi.Output.create<String>(map['storageContainerName'] as String),
    );
  }
}

