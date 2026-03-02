// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_subscription_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_subscription_subscription_args_doc}
class SubscriptionArgs {
  /// Determines whether tracing can be enabled. Defaults to `true`.
  final pulumi.Input<bool>? allowTracing;
  /// The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `product_id` and `api_id` can be set. If both are missing `/apis` scope is used for the subscription and all apis are accessible.
  final pulumi.Input<String>? apiId;
  /// The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The display name of this Subscription.
  final pulumi.Input<String> displayName;
  /// The primary subscription key to use for the subscription.
  final pulumi.Input<String>? primaryKey;
  /// The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `product_id` and `api_id` can be set. If both are missing `all_apis` scope is used for the subscription.
  final pulumi.Input<String>? productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The secondary subscription key to use for the subscription.
  final pulumi.Input<String>? secondaryKey;
  /// The state of this Subscription. Possible values are `active`, `cancelled`, `expired`, `rejected`, `submitted` and `suspended`. Defaults to `submitted`.
  final pulumi.Input<String>? state;
  /// An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subscriptionId;
  /// The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [SubscriptionArgs].
  /// [allowTracing] Determines whether tracing can be enabled. Defaults to `true`.
  /// [apiId] The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created.
  /// [apiManagementName] The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created.
  /// [displayName] The display name of this Subscription.
  /// [primaryKey] The primary subscription key to use for the subscription.
  /// [productId] The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [secondaryKey] The secondary subscription key to use for the subscription.
  /// [state] The state of this Subscription. Possible values are `active`, `cancelled`, `expired`, `rejected`, `submitted` and `suspended`. Defaults to `submitted`.
  /// [subscriptionId] An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created.
  /// [userId] The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created.
  SubscriptionArgs({
    this.allowTracing,
    this.apiId,
    required this.apiManagementName,
    required this.displayName,
    this.primaryKey,
    this.productId,
    required this.resourceGroupName,
    this.secondaryKey,
    this.state,
    this.subscriptionId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTracing': ?allowTracing,
      'apiId': ?apiId,
      'apiManagementName': apiManagementName,
      'displayName': displayName,
      'primaryKey': ?primaryKey,
      'productId': ?productId,
      'resourceGroupName': resourceGroupName,
      'secondaryKey': ?secondaryKey,
      'state': ?state,
      'subscriptionId': ?subscriptionId,
      'userId': ?userId,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      allowTracing: map['allowTracing'] == null ? null : (map['allowTracing']! as bool).input(),
      apiId: map['apiId'] == null ? null : (map['apiId']! as String).input(),
      apiManagementName: (map['apiManagementName'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      productId: map['productId'] == null ? null : (map['productId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}

