// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Put subscription creation result properties.
class SubscriptionAliasResponsePropertiesResponse {
  /// The accept ownership state of the resource.
  final pulumi.Input<String> acceptOwnershipState;

  /// Url to accept ownership of the subscription.
  final pulumi.Input<String> acceptOwnershipUrl;

  /// Billing scope of the subscription.
  /// For CustomerLed and FieldLed - /billingAccounts/{billingAccountName}/billingProfiles/{billingProfileName}/invoiceSections/{invoiceSectionName}
  /// For PartnerLed - /billingAccounts/{billingAccountName}/customers/{customerName}
  /// For Legacy EA - /billingAccounts/{billingAccountName}/enrollmentAccounts/{enrollmentAccountName}
  final pulumi.Input<String>? billingScope;

  /// Created Time
  final pulumi.Input<String>? createdTime;

  /// The display name of the subscription.
  final pulumi.Input<String>? displayName;

  /// The Management Group Id.
  final pulumi.Input<String>? managementGroupId;

  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;

  /// Reseller Id
  final pulumi.Input<String>? resellerId;

  /// Newly created subscription Id.
  final pulumi.Input<String> subscriptionId;

  /// Owner Id of the subscription
  final pulumi.Input<String>? subscriptionOwnerId;

  /// Tags for the subscription
  final pulumi.Input<Map<String, String>>? tags;

  /// The workload type of the subscription. It can be either Production or DevTest.
  final pulumi.Input<String>? workload;

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

  factory SubscriptionAliasResponsePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SubscriptionAliasResponsePropertiesResponse(
      acceptOwnershipState: pulumi.Input.fromValue(
        map['acceptOwnershipState'] as String,
      ),
      acceptOwnershipUrl: pulumi.Input.fromValue(
        map['acceptOwnershipUrl'] as String,
      ),
      billingScope: (() {
        final guardedValue = map['billingScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdTime: (() {
        final guardedValue = map['createdTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managementGroupId: (() {
        final guardedValue = map['managementGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      resellerId: (() {
        final guardedValue = map['resellerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      subscriptionOwnerId: (() {
        final guardedValue = map['subscriptionOwnerId'];
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
      workload: (() {
        final guardedValue = map['workload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
