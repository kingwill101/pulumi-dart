// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_blob_get_blob_args_doc}
/// Arguments for getBlob.
/// {@endtemplate}
/// {@macro pulumi_storage_get_blob_get_blob_args_doc}
class GetBlobArgs {
  /// A map of custom blob metadata.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The name of the Blob.
  final pulumi.Input<String> name;
  /// The name of the Storage Account where the Container exists.
  ///
  /// &gt; **Note:** This property is deprecated in favour of `storageContainerId` and will be removed in version 5.0 of the AzureRM Provider.
  final pulumi.Input<String?>? storageAccountName;
  /// The ID of the Storage Container where the Blob exists.
  final pulumi.Input<String?>? storageContainerId;
  /// The name of the Storage Container where the Blob exists.
  ///
  /// &gt; **Note:** This property is deprecated in favour of `storageContainerId` and will be removed in version 5.0 of the AzureRM Provider.
  final pulumi.Input<String?>? storageContainerName;

  /// Creates a new [GetBlobArgs].
  /// [metadata] A map of custom blob metadata.
  /// [name] The name of the Blob.
  /// [storageAccountName] The name of the Storage Account where the Container exists.
  /// [storageContainerId] The ID of the Storage Container where the Blob exists.
  /// [storageContainerName] The name of the Storage Container where the Blob exists.
  const GetBlobArgs({
    this.metadata,
    required this.name,
    this.storageAccountName,
    this.storageContainerId,
    this.storageContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'name': name,
      'storageAccountName': ?storageAccountName,
      'storageContainerId': ?storageContainerId,
      'storageContainerName': ?storageContainerName,
    };
  }

  factory GetBlobArgs.fromMap(Map<String, dynamic> map) {
    return GetBlobArgs(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerId: (() { final guardedValue = map['storageContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
