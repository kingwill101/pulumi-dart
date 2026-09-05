// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagementGroup resources.
class ManagementGroupState {
  /// A friendly name for this Management Group. If not specified, this will be the same as the `name`.
  final pulumi.Input<String?>? displayName;
  /// The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Parent Management Group.
  final pulumi.Input<String?>? parentManagementGroupId;
  /// A list of Subscription GUIDs which should be assigned to the Management Group.
  ///
  /// &gt; **Note:** To clear all Subscriptions from the Management Group set `subscriptionIds` to an empty list
  final pulumi.Input<List<String>?>? subscriptionIds;
  /// The Management Group ID with the Tenant ID prefix.
  final pulumi.Input<String?>? tenantScopedId;

  /// Creates a new [ManagementGroupState].
  /// [displayName] A friendly name for this Management Group. If not specified, this will be the same as the `name`.
  /// [name] The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created.
  /// [parentManagementGroupId] The ID of the Parent Management Group.
  /// [subscriptionIds] A list of Subscription GUIDs which should be assigned to the Management Group.
  /// [tenantScopedId] The Management Group ID with the Tenant ID prefix.
  const ManagementGroupState({
    this.displayName,
    this.name,
    this.parentManagementGroupId,
    this.subscriptionIds,
    this.tenantScopedId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
      'parentManagementGroupId': ?parentManagementGroupId,
      'subscriptionIds': ?subscriptionIds,
      'tenantScopedId': ?tenantScopedId,
    };
  }

  factory ManagementGroupState.fromMap(Map<String, dynamic> map) {
    return ManagementGroupState(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentManagementGroupId: (() { final guardedValue = map['parentManagementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionIds: (() { final guardedValue = map['subscriptionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenantScopedId: (() { final guardedValue = map['tenantScopedId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
