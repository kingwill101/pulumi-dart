// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatastoreBlobstorage resources.
class DatastoreBlobstorageState {
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
  final pulumi.Input<String>? storageContainerId;
  /// A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [DatastoreBlobstorageState].
  /// [accountKey] The access key of the Storage Account. Conflicts with `shared_access_signature`.
  /// [description] Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  /// [isDefault] Specifies whether this Machines Learning DataStore is the default for the Workspace. Defaults to `false`.
  /// [name] The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [serviceDataAuthIdentity] Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  /// [sharedAccessSignature] The Shared Access Signature of the Storage Account. Conflicts with `account_key`.
  /// [storageContainerId] The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [workspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  DatastoreBlobstorageState({
    this.accountKey,
    this.description,
    this.isDefault,
    this.name,
    this.serviceDataAuthIdentity,
    this.sharedAccessSignature,
    this.storageContainerId,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'description': ?description,
      'isDefault': ?isDefault,
      'name': ?name,
      'serviceDataAuthIdentity': ?serviceDataAuthIdentity,
      'sharedAccessSignature': ?sharedAccessSignature,
      'storageContainerId': ?storageContainerId,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory DatastoreBlobstorageState.fromMap(Map<String, dynamic> map) {
    return DatastoreBlobstorageState(
      accountKey: map['accountKey'] == null ? null : (map['accountKey']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      serviceDataAuthIdentity: map['serviceDataAuthIdentity'] == null ? null : (map['serviceDataAuthIdentity']! as String).input(),
      sharedAccessSignature: map['sharedAccessSignature'] == null ? null : (map['sharedAccessSignature']! as String).input(),
      storageContainerId: map['storageContainerId'] == null ? null : (map['storageContainerId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

