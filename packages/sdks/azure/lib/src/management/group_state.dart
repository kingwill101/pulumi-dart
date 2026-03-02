// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// A friendly name for this Management Group. If not specified, this will be the same as the `name`.
  final pulumi.Input<String>? displayName;
  /// The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Parent Management Group.
  final pulumi.Input<String>? parentManagementGroupId;
  /// A list of Subscription GUIDs which should be assigned to the Management Group.
  ///
  /// > **Note:** To clear all Subscriptions from the Management Group set `subscription_ids` to an empty list
  final pulumi.Input<List<String>>? subscriptionIds;
  /// The Management Group ID with the Tenant ID prefix.
  final pulumi.Input<String>? tenantScopedId;

  /// Creates a new [GroupState].
  /// [displayName] A friendly name for this Management Group. If not specified, this will be the same as the `name`.
  /// [name] The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created.
  /// [parentManagementGroupId] The ID of the Parent Management Group.
  /// [subscriptionIds] A list of Subscription GUIDs which should be assigned to the Management Group.
  /// [tenantScopedId] The Management Group ID with the Tenant ID prefix.
  GroupState({
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

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parentManagementGroupId: map['parentManagementGroupId'] == null ? null : (map['parentManagementGroupId'] as String).input(),
      subscriptionIds: map['subscriptionIds'] == null ? null : ((map['subscriptionIds'] as List).cast<String>()).input(),
      tenantScopedId: map['tenantScopedId'] == null ? null : (map['tenantScopedId'] as String).input(),
    );
  }
}

