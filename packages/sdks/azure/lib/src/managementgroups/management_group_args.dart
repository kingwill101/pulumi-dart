// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managementgroups_management_group_management_group_args_doc}
/// The set of arguments for ManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_managementgroups_management_group_management_group_args_doc}
class ManagementGroupArgs {
  /// A friendly name for this Management Group. If not specified, this will be the same as the `name`.
  final pulumi.Input<String>? displayName;
  /// The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Parent Management Group.
  final pulumi.Input<String>? parentManagementGroupId;
  /// A list of Subscription GUIDs which should be assigned to the Management Group.
  ///
  /// &gt; **Note:** To clear all Subscriptions from the Management Group set `subscription_ids` to an empty list
  final pulumi.Input<List<String>>? subscriptionIds;

  /// Creates a new [ManagementGroupArgs].
  /// [displayName] A friendly name for this Management Group. If not specified, this will be the same as the `name`.
  /// [name] The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created.
  /// [parentManagementGroupId] The ID of the Parent Management Group.
  /// [subscriptionIds] A list of Subscription GUIDs which should be assigned to the Management Group.
  ManagementGroupArgs({
    this.displayName,
    this.name,
    this.parentManagementGroupId,
    this.subscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
      'parentManagementGroupId': ?parentManagementGroupId,
      'subscriptionIds': ?subscriptionIds,
    };
  }

  factory ManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return ManagementGroupArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentManagementGroupId: (() { final guardedValue = map['parentManagementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionIds: (() { final guardedValue = map['subscriptionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

