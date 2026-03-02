// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatastoreFileshare resources.
class DatastoreFileshareState {
  /// The access key of the Storage Account. Conflicts with `shared_access_signature`.
  final pulumi.Input<String>? accountKey;
  /// Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? description;
  /// Indicate whether this Machines Learning DataStore is the default for the Workspace.
  final pulumi.Input<bool>? isDefault;
  /// The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? name;
  /// Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  final pulumi.Input<String>? serviceDataIdentity;
  /// The Shared Access Signature of the Storage Account. Conflicts with `account_key`.
  final pulumi.Input<String>? sharedAccessSignature;
  /// The ID of the Storage Account File Share. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? storageFileshareId;
  /// A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [DatastoreFileshareState].
  /// [accountKey] The access key of the Storage Account. Conflicts with `shared_access_signature`.
  /// [description] Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  /// [isDefault] Indicate whether this Machines Learning DataStore is the default for the Workspace.
  /// [name] The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [serviceDataIdentity] Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  /// [sharedAccessSignature] The Shared Access Signature of the Storage Account. Conflicts with `account_key`.
  /// [storageFileshareId] The ID of the Storage Account File Share. Changing this forces a new Machine Learning DataStore to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [workspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  DatastoreFileshareState({
    this.accountKey,
    this.description,
    this.isDefault,
    this.name,
    this.serviceDataIdentity,
    this.sharedAccessSignature,
    this.storageFileshareId,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'description': ?description,
      'isDefault': ?isDefault,
      'name': ?name,
      'serviceDataIdentity': ?serviceDataIdentity,
      'sharedAccessSignature': ?sharedAccessSignature,
      'storageFileshareId': ?storageFileshareId,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory DatastoreFileshareState.fromMap(Map<String, dynamic> map) {
    return DatastoreFileshareState(
      accountKey: map['accountKey'] == null ? null : (map['accountKey']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      serviceDataIdentity: map['serviceDataIdentity'] == null ? null : (map['serviceDataIdentity']! as String).input(),
      sharedAccessSignature: map['sharedAccessSignature'] == null ? null : (map['sharedAccessSignature']! as String).input(),
      storageFileshareId: map['storageFileshareId'] == null ? null : (map['storageFileshareId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

