// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGroup.
class GetGroupResult {
  /// A list of Management Group IDs which directly or indirectly belong to this Management Group.
  final List<String>? allManagementGroupIds;
  /// A list of Subscription IDs which are assigned to this Management Group or its children Management Groups.
  final List<String>? allSubscriptionIds;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of Management Group IDs which directly belong to this Management Group.
  final List<String>? managementGroupIds;
  final String? name;
  /// The ID of any Parent Management Group.
  final String? parentManagementGroupId;
  /// A list of Subscription IDs which are directly assigned to this Management Group.
  final List<String>? subscriptionIds;
  /// The Management Group ID with the Tenant ID prefix.
  final String? tenantScopedId;

  /// Creates a new [GetGroupResult].
  /// [allManagementGroupIds] A list of Management Group IDs which directly or indirectly belong to this Management Group.
  /// [allSubscriptionIds] A list of Subscription IDs which are assigned to this Management Group or its children Management Groups.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managementGroupIds] A list of Management Group IDs which directly belong to this Management Group.
  /// [name] Optional.
  /// [parentManagementGroupId] The ID of any Parent Management Group.
  /// [subscriptionIds] A list of Subscription IDs which are directly assigned to this Management Group.
  /// [tenantScopedId] The Management Group ID with the Tenant ID prefix.
  const GetGroupResult({
    this.allManagementGroupIds,
    this.allSubscriptionIds,
    this.displayName,
    this.id,
    this.managementGroupIds,
    this.name,
    this.parentManagementGroupId,
    this.subscriptionIds,
    this.tenantScopedId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allManagementGroupIds': ?allManagementGroupIds,
      'allSubscriptionIds': ?allSubscriptionIds,
      'displayName': ?displayName,
      'id': ?id,
      'managementGroupIds': ?managementGroupIds,
      'name': ?name,
      'parentManagementGroupId': ?parentManagementGroupId,
      'subscriptionIds': ?subscriptionIds,
      'tenantScopedId': ?tenantScopedId,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      allManagementGroupIds: (() { final guardedValue = map['allManagementGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      allSubscriptionIds: (() { final guardedValue = map['allSubscriptionIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementGroupIds: (() { final guardedValue = map['managementGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentManagementGroupId: (() { final guardedValue = map['parentManagementGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionIds: (() { final guardedValue = map['subscriptionIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tenantScopedId: (() { final guardedValue = map['tenantScopedId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
