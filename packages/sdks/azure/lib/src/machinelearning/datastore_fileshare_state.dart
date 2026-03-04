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
      accountKey: (() {
        final guardedValue = map['accountKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isDefault: (() {
        final guardedValue = map['isDefault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceDataIdentity: (() {
        final guardedValue = map['serviceDataIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedAccessSignature: (() {
        final guardedValue = map['sharedAccessSignature'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageFileshareId: (() {
        final guardedValue = map['storageFileshareId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceId: (() {
        final guardedValue = map['workspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
