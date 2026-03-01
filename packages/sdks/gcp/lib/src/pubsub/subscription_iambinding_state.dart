// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_iambinding_condition.dart';

/// Input properties used for looking up and filtering SubscriptionIAMBinding resources.
class SubscriptionIAMBindingState {
  final pulumi.Input<SubscriptionIAMBindingCondition>? condition;
  /// (Computed) The etag of the subscription's IAM policy.
  final pulumi.Input<String>? etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>>? members;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.pubsub.SubscriptionIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String>? role;
  /// The subscription name or id to bind to attach IAM policy to.
  final pulumi.Input<String>? subscription;

  /// Creates a new [SubscriptionIAMBindingState].
  /// [condition] Optional.
  /// [etag] (Computed) The etag of the subscription's IAM policy.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The project in which the resource belongs. If it
  /// [role] The role that should be applied. Only one
  /// [subscription] The subscription name or id to bind to attach IAM policy to.
  SubscriptionIAMBindingState({
    pulumi.Output<SubscriptionIAMBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
    pulumi.Output<String>? subscription,
  }) :
      condition = pulumi.Input.asOptionalInput<SubscriptionIAMBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role),
      subscription = pulumi.Input.asOptionalInput<String>(subscription);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<SubscriptionIAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'members': ?members,
      'project': ?project,
      'role': ?role,
      'subscription': ?subscription,
    };
  }

  factory SubscriptionIAMBindingState.fromMap(Map<String, dynamic> map) {
    return SubscriptionIAMBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<SubscriptionIAMBindingCondition>(SubscriptionIAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      subscription: map['subscription'] == null ? null : pulumi.Output.create<String>(map['subscription'] as String),
    );
  }
}

