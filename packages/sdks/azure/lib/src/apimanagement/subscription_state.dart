// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subscription resources.
class SubscriptionState {
  /// Determines whether tracing can be enabled. Defaults to `true`.
  final pulumi.Input<bool>? allowTracing;
  /// The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `product_id` and `api_id` can be set. If both are missing `/apis` scope is used for the subscription and all apis are accessible.
  final pulumi.Input<String>? apiId;
  /// The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The display name of this Subscription.
  final pulumi.Input<String>? displayName;
  /// The primary subscription key to use for the subscription.
  final pulumi.Input<String>? primaryKey;
  /// The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `product_id` and `api_id` can be set. If both are missing `all_apis` scope is used for the subscription.
  final pulumi.Input<String>? productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary subscription key to use for the subscription.
  final pulumi.Input<String>? secondaryKey;
  /// The state of this Subscription. Possible values are `active`, `cancelled`, `expired`, `rejected`, `submitted` and `suspended`. Defaults to `submitted`.
  final pulumi.Input<String>? state;
  /// An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subscriptionId;
  /// The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [SubscriptionState].
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
  SubscriptionState({
    pulumi.Output<bool>? allowTracing,
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<String>? state,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<String>? userId,
  }) :
      allowTracing = pulumi.Input.asOptionalInput<bool>(allowTracing),
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      state = pulumi.Input.asOptionalInput<String>(state),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTracing': ?allowTracing,
      'apiId': ?apiId,
      'apiManagementName': ?apiManagementName,
      'displayName': ?displayName,
      'primaryKey': ?primaryKey,
      'productId': ?productId,
      'resourceGroupName': ?resourceGroupName,
      'secondaryKey': ?secondaryKey,
      'state': ?state,
      'subscriptionId': ?subscriptionId,
      'userId': ?userId,
    };
  }

  factory SubscriptionState.fromMap(Map<String, dynamic> map) {
    return SubscriptionState(
      allowTracing: map['allowTracing'] == null ? null : pulumi.Output.create<bool>(map['allowTracing'] as bool),
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

