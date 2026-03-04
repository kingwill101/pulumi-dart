// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subscription resources.
class SubscriptionState {
  /// Determines whether tracing can be enabled. Defaults to `true`.
  final pulumi.Input<bool>? allowTracing;

  /// The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only one of `product_id` and `api_id` can be set. If both are missing `/apis` scope is used for the subscription and all apis are accessible.
  final pulumi.Input<String>? apiId;

  /// The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;

  /// The display name of this Subscription.
  final pulumi.Input<String>? displayName;

  /// The primary subscription key to use for the subscription.
  final pulumi.Input<String>? primaryKey;

  /// The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only one of `product_id` and `api_id` can be set. If both are missing `all_apis` scope is used for the subscription.
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
    this.allowTracing,
    this.apiId,
    this.apiManagementName,
    this.displayName,
    this.primaryKey,
    this.productId,
    this.resourceGroupName,
    this.secondaryKey,
    this.state,
    this.subscriptionId,
    this.userId,
  });

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
      allowTracing: (() {
        final guardedValue = map['allowTracing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      apiId: (() {
        final guardedValue = map['apiId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apiManagementName: (() {
        final guardedValue = map['apiManagementName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryKey: (() {
        final guardedValue = map['primaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productId: (() {
        final guardedValue = map['productId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryKey: (() {
        final guardedValue = map['secondaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
