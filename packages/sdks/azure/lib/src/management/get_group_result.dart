// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGroup.
class GetGroupResult {
  /// A list of Management Group IDs which directly or indirectly belong to this Management Group.
  final List<String> allManagementGroupIds;

  /// A list of Subscription IDs which are assigned to this Management Group or its children Management Groups.
  final List<String> allSubscriptionIds;
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Management Group IDs which directly belong to this Management Group.
  final List<String> managementGroupIds;
  final String name;

  /// The ID of any Parent Management Group.
  final String parentManagementGroupId;

  /// A list of Subscription IDs which are directly assigned to this Management Group.
  final List<String> subscriptionIds;

  /// The Management Group ID with the Tenant ID prefix.
  final String tenantScopedId;

  /// Creates a new [GetGroupResult].
  /// [allManagementGroupIds] A list of Management Group IDs which directly or indirectly belong to this Management Group.
  /// [allSubscriptionIds] A list of Subscription IDs which are assigned to this Management Group or its children Management Groups.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managementGroupIds] A list of Management Group IDs which directly belong to this Management Group.
  /// [name] Required.
  /// [parentManagementGroupId] The ID of any Parent Management Group.
  /// [subscriptionIds] A list of Subscription IDs which are directly assigned to this Management Group.
  /// [tenantScopedId] The Management Group ID with the Tenant ID prefix.
  GetGroupResult({
    required this.allManagementGroupIds,
    required this.allSubscriptionIds,
    required this.displayName,
    required this.id,
    required this.managementGroupIds,
    required this.name,
    required this.parentManagementGroupId,
    required this.subscriptionIds,
    required this.tenantScopedId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allManagementGroupIds': allManagementGroupIds,
      'allSubscriptionIds': allSubscriptionIds,
      'displayName': displayName,
      'id': id,
      'managementGroupIds': managementGroupIds,
      'name': name,
      'parentManagementGroupId': parentManagementGroupId,
      'subscriptionIds': subscriptionIds,
      'tenantScopedId': tenantScopedId,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      allManagementGroupIds: (map['allManagementGroupIds'] as List)
          .cast<String>(),
      allSubscriptionIds: (map['allSubscriptionIds'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      managementGroupIds: (map['managementGroupIds'] as List).cast<String>(),
      name: map['name'] as String,
      parentManagementGroupId: map['parentManagementGroupId'] as String,
      subscriptionIds: (map['subscriptionIds'] as List).cast<String>(),
      tenantScopedId: map['tenantScopedId'] as String,
    );
  }
}
