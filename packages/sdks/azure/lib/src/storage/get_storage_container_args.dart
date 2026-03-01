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
  /// > **Note:** One of `storage_account_name` or `storage_account_id` must be specified. When specifying `storage_account_id` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;
  /// The name of the Storage Account where the Container exists. This property is deprecated in favour of `storage_account_id`.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [GetStorageContainerArgs].
  /// [metadata] A mapping of MetaData for this Container.
  /// [name] The name of the Container.
  /// [storageAccountId] The id of the Storage Account where the Container exists. This property will become Required in version 5.0 of the Provider.
  /// [storageAccountName] The name of the Storage Account where the Container exists. This property is deprecated in favour of `storage_account_id`.
  GetStorageContainerArgs({
    pulumi.Output<Map<String, String>>? metadata,
    required pulumi.Output<String> name,
    pulumi.Output<String>? storageAccountId,
    pulumi.Output<String>? storageAccountName,
  }) :
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asInput<String>(name),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName);

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
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Output.create<String>(map['name'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
    );
  }
}

