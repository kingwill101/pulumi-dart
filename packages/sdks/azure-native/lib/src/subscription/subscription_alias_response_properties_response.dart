// ignore_for_file: unused_element, unnecessary_cast


/// Put subscription creation result properties.
class SubscriptionAliasResponsePropertiesResponse {
  /// The accept ownership state of the resource.
  final String acceptOwnershipState;
  /// Url to accept ownership of the subscription.
  final String acceptOwnershipUrl;
  /// Billing scope of the subscription.
  /// For CustomerLed and FieldLed - /billingAccounts/{billingAccountName}/billingProfiles/{billingProfileName}/invoiceSections/{invoiceSectionName}
  /// For PartnerLed - /billingAccounts/{billingAccountName}/customers/{customerName}
  /// For Legacy EA - /billingAccounts/{billingAccountName}/enrollmentAccounts/{enrollmentAccountName}
  final String? billingScope;
  /// Created Time
  final String? createdTime;
  /// The display name of the subscription.
  final String? displayName;
  /// The Management Group Id.
  final String? managementGroupId;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Reseller Id
  final String? resellerId;
  /// Newly created subscription Id.
  final String subscriptionId;
  /// Owner Id of the subscription
  final String? subscriptionOwnerId;
  /// Tags for the subscription
  final Map<String, String>? tags;
  /// The workload type of the subscription. It can be either Production or DevTest.
  final String? workload;

  /// Creates a new [SubscriptionAliasResponsePropertiesResponse].
  /// [acceptOwnershipState] The accept ownership state of the resource.
  /// [acceptOwnershipUrl] Url to accept ownership of the subscription.
  /// [billingScope] Billing scope of the subscription.
  /// [createdTime] Created Time
  /// [displayName] The display name of the subscription.
  /// [managementGroupId] The Management Group Id.
  /// [provisioningState] The provisioning state of the resource.
  /// [resellerId] Reseller Id
  /// [subscriptionId] Newly created subscription Id.
  /// [subscriptionOwnerId] Owner Id of the subscription
  /// [tags] Tags for the subscription
  /// [workload] The workload type of the subscription. It can be either Production or DevTest.
  SubscriptionAliasResponsePropertiesResponse({
    required this.acceptOwnershipState,
    required this.acceptOwnershipUrl,
    this.billingScope,
    this.createdTime,
    this.displayName,
    this.managementGroupId,
    required this.provisioningState,
    this.resellerId,
    required this.subscriptionId,
    this.subscriptionOwnerId,
    this.tags,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptOwnershipState': acceptOwnershipState,
      'acceptOwnershipUrl': acceptOwnershipUrl,
      'billingScope': ?billingScope,
      'createdTime': ?createdTime,
      'displayName': ?displayName,
      'managementGroupId': ?managementGroupId,
      'provisioningState': provisioningState,
      'resellerId': ?resellerId,
      'subscriptionId': subscriptionId,
      'subscriptionOwnerId': ?subscriptionOwnerId,
      'tags': ?tags,
      'workload': ?workload,
    };
  }

  factory SubscriptionAliasResponsePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionAliasResponsePropertiesResponse(
      acceptOwnershipState: map['acceptOwnershipState'] as String,
      acceptOwnershipUrl: map['acceptOwnershipUrl'] as String,
      billingScope: map['billingScope'] == null ? null : map['billingScope'] as String,
      createdTime: map['createdTime'] == null ? null : map['createdTime'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      managementGroupId: map['managementGroupId'] == null ? null : map['managementGroupId'] as String,
      provisioningState: map['provisioningState'] as String,
      resellerId: map['resellerId'] == null ? null : map['resellerId'] as String,
      subscriptionId: map['subscriptionId'] as String,
      subscriptionOwnerId: map['subscriptionOwnerId'] == null ? null : map['subscriptionOwnerId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workload: map['workload'] == null ? null : map['workload'] as String,
    );
  }
}

