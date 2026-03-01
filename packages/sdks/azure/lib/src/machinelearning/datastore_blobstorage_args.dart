// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearning_datastore_blobstorage_datastore_blobstorage_args_doc}
/// The set of arguments for DatastoreBlobstorage.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_datastore_blobstorage_datastore_blobstorage_args_doc}
class DatastoreBlobstorageArgs {
  /// The access key of the Storage Account. Conflicts with `shared_access_signature`.
  final pulumi.Input<String>? accountKey;
  /// Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? description;
  /// Specifies whether this Machines Learning DataStore is the default for the Workspace. Defaults to `false`.
  ///
  /// > **Note:** `is_default` can only be set to `true` on update.
  final pulumi.Input<bool>? isDefault;
  /// The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? name;
  /// Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  final pulumi.Input<String>? serviceDataAuthIdentity;
  /// The Shared Access Signature of the Storage Account. Conflicts with `account_key`.
  ///
  /// > **Note:** If `service_data_auth_identity` is set to `None` or omitted, one of `account_key` or `shared_access_signature` must be specified.
  final pulumi.Input<String>? sharedAccessSignature;
  /// The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String> storageContainerId;
  /// A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [DatastoreBlobstorageArgs].
  /// [accountKey] The access key of the Storage Account. Conflicts with `shared_access_signature`.
  /// [description] Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  /// [isDefault] Specifies whether this Machines Learning DataStore is the default for the Workspace. Defaults to `false`.
  /// [name] The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [serviceDataAuthIdentity] Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  /// [sharedAccessSignature] The Shared Access Signature of the Storage Account. Conflicts with `account_key`.
  /// [storageContainerId] The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [workspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  DatastoreBlobstorageArgs({
    pulumi.Output<String>? accountKey,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<String>? serviceDataAuthIdentity,
    pulumi.Output<String>? sharedAccessSignature,
    required pulumi.Output<String> storageContainerId,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceId,
  }) :
      accountKey = pulumi.Input.asOptionalInput<String>(accountKey),
      description = pulumi.Input.asOptionalInput<String>(description),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      serviceDataAuthIdentity = pulumi.Input.asOptionalInput<String>(serviceDataAuthIdentity),
      sharedAccessSignature = pulumi.Input.asOptionalInput<String>(sharedAccessSignature),
      storageContainerId = pulumi.Input.asInput<String>(storageContainerId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'description': ?description,
      'isDefault': ?isDefault,
      'name': ?name,
      'serviceDataAuthIdentity': ?serviceDataAuthIdentity,
      'sharedAccessSignature': ?sharedAccessSignature,
      'storageContainerId': storageContainerId,
      'tags': ?tags,
      'workspaceId': workspaceId,
    };
  }

  factory DatastoreBlobstorageArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreBlobstorageArgs(
      accountKey: map['accountKey'] == null ? null : pulumi.Output.create<String>(map['accountKey'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serviceDataAuthIdentity: map['serviceDataAuthIdentity'] == null ? null : pulumi.Output.create<String>(map['serviceDataAuthIdentity'] as String),
      sharedAccessSignature: map['sharedAccessSignature'] == null ? null : pulumi.Output.create<String>(map['sharedAccessSignature'] as String),
      storageContainerId: pulumi.Output.create<String>(map['storageContainerId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

