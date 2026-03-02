// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_subscription_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_core_subscription_subscription_args_doc}
class SubscriptionArgs {
  /// The Alias name for the subscription. This provider will generate a new GUID if this is not supplied. Changing this forces a new Subscription to be created.
  final pulumi.Input<String>? alias;
  /// The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID.
  final pulumi.Input<String>? billingScopeId;
  /// The ID of the Subscription. Changing this forces a new Subscription to be created.
  ///
  /// > **NOTE:** This value can be specified only for adopting control of an existing Subscription, it cannot be used to provide a custom Subscription ID.
  ///
  /// > **NOTE:** Either `billing_scope_id` or `subscription_id` has to be specified.
  final pulumi.Input<String>? subscriptionId;
  /// The Name of the Subscription. This is the Display Name in the portal.
  final pulumi.Input<String> subscriptionName;
  /// A mapping of tags to assign to the Subscription.
  final pulumi.Input<Map<String, String>>? tags;
  /// The workload type of the Subscription. Possible values are `Production` (default) and `DevTest`. Changing this forces a new Subscription to be created.
  final pulumi.Input<String>? workload;

  /// Creates a new [SubscriptionArgs].
  /// [alias] The Alias name for the subscription. This provider will generate a new GUID if this is not supplied. Changing this forces a new Subscription to be created.
  /// [billingScopeId] The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID.
  /// [subscriptionId] The ID of the Subscription. Changing this forces a new Subscription to be created.
  /// [subscriptionName] The Name of the Subscription. This is the Display Name in the portal.
  /// [tags] A mapping of tags to assign to the Subscription.
  /// [workload] The workload type of the Subscription. Possible values are `Production` (default) and `DevTest`. Changing this forces a new Subscription to be created.
  SubscriptionArgs({
    this.alias,
    this.billingScopeId,
    this.subscriptionId,
    required this.subscriptionName,
    this.tags,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'billingScopeId': ?billingScopeId,
      'subscriptionId': ?subscriptionId,
      'subscriptionName': subscriptionName,
      'tags': ?tags,
      'workload': ?workload,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      alias: map['alias'] == null ? null : (map['alias'] as String).input(),
      billingScopeId: map['billingScopeId'] == null ? null : (map['billingScopeId'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
      subscriptionName: (map['subscriptionName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      workload: map['workload'] == null ? null : (map['workload'] as String).input(),
    );
  }
}

