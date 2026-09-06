// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'storage_task_action.dart';

/// {@template pulumi_storageactions_storage_task_args_doc}
/// The set of arguments for StorageTask.
/// {@endtemplate}
/// {@macro pulumi_storageactions_storage_task_args_doc}
class StorageTaskArgs {
  /// The storage task action that is executed
  final pulumi.Input<StorageTaskAction> action;
  /// Text that describes the purpose of the storage task
  final pulumi.Input<String> description;
  /// Storage Task is enabled when set to true and disabled when set to false
  final pulumi.Input<bool> enabled;
  /// The managed service identity of the resource.
  final pulumi.Input<ManagedServiceIdentity> identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the storage task within the specified resource group. Storage task names must be between 3 and 18 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String?>? storageTaskName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [StorageTaskArgs].
  /// [action] The storage task action that is executed
  /// [description] Text that describes the purpose of the storage task
  /// [enabled] Storage Task is enabled when set to true and disabled when set to false
  /// [identity] The managed service identity of the resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageTaskName] The name of the storage task within the specified resource group. Storage task names must be between 3 and 18 characters in length and use numbers and lower-case letters only.
  /// [tags] Resource tags.
  const StorageTaskArgs({
    required this.action,
    required this.description,
    required this.enabled,
    required this.identity,
    this.location,
    required this.resourceGroupName,
    this.storageTaskName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<StorageTaskAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'description': description,
      'enabled': enabled,
      'identity': pulumi.Input.mapInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageTaskName': ?storageTaskName,
      'tags': ?tags,
    };
  }

  factory StorageTaskArgs.fromMap(Map<String, dynamic> map) {
    return StorageTaskArgs(
      action: pulumi.Input.fromValue(StorageTaskAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      identity: pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageTaskName: (() { final guardedValue = map['storageTaskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
