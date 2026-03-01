// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subscription resources.
class SubscriptionState {
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
  final pulumi.Input<String>? subscriptionName;
  /// A mapping of tags to assign to the Subscription.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Tenant to which the subscription belongs.
  final pulumi.Input<String>? tenantId;
  /// The workload type of the Subscription. Possible values are `Production` (default) and `DevTest`. Changing this forces a new Subscription to be created.
  final pulumi.Input<String>? workload;

  /// Creates a new [SubscriptionState].
  /// [alias] The Alias name for the subscription. This provider will generate a new GUID if this is not supplied. Changing this forces a new Subscription to be created.
  /// [billingScopeId] The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID.
  /// [subscriptionId] The ID of the Subscription. Changing this forces a new Subscription to be created.
  /// [subscriptionName] The Name of the Subscription. This is the Display Name in the portal.
  /// [tags] A mapping of tags to assign to the Subscription.
  /// [tenantId] The ID of the Tenant to which the subscription belongs.
  /// [workload] The workload type of the Subscription. Possible values are `Production` (default) and `DevTest`. Changing this forces a new Subscription to be created.
  SubscriptionState({
    pulumi.Output<String>? alias,
    pulumi.Output<String>? billingScopeId,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<String>? subscriptionName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? workload,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      billingScopeId = pulumi.Input.asOptionalInput<String>(billingScopeId),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      subscriptionName = pulumi.Input.asOptionalInput<String>(subscriptionName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      workload = pulumi.Input.asOptionalInput<String>(workload);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'billingScopeId': ?billingScopeId,
      'subscriptionId': ?subscriptionId,
      'subscriptionName': ?subscriptionName,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'workload': ?workload,
    };
  }

  factory SubscriptionState.fromMap(Map<String, dynamic> map) {
    return SubscriptionState(
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      billingScopeId: map['billingScopeId'] == null ? null : pulumi.Output.create<String>(map['billingScopeId'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      subscriptionName: map['subscriptionName'] == null ? null : pulumi.Output.create<String>(map['subscriptionName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      workload: map['workload'] == null ? null : pulumi.Output.create<String>(map['workload'] as String),
    );
  }
}

