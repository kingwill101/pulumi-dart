// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_storage_container_get_storage_container_args_doc}
/// Arguments for getStorageContainer.
/// {@endtemplate}
/// {@macro pulumi_storage_get_storage_container_get_storage_container_args_doc}
class GetStorageContainerArgs {
  /// A mapping of MetaData for this Container.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the Container.
  final pulumi.Input<String> name;
  /// The id of the Storage Account where the Container exists. This property will become Required in version 5.0 of the Provider.
  ///
  /// &gt; **Note:** One of `storage_account_name` or `storage_account_id` must be specified. When specifying `storage_account_id` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;
  /// The name of the Storage Account where the Container exists. This property is deprecated in favour of `storage_account_id`.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [GetStorageContainerArgs].
  /// [metadata] A mapping of MetaData for this Container.
  /// [name] The name of the Container.
  /// [storageAccountId] The id of the Storage Account where the Container exists. This property will become Required in version 5.0 of the Provider.
  /// [storageAccountName] The name of the Storage Account where the Container exists. This property is deprecated in favour of `storage_account_id`.
  GetStorageContainerArgs({
    this.metadata,
    required this.name,
    this.storageAccountId,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'name': name,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory GetStorageContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageContainerArgs(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

