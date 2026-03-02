// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_iambinding_condition.dart';

/// {@template pulumi_pubsub_subscription_iambinding_subscription_iambinding_args_doc}
/// The set of arguments for SubscriptionIAMBinding.
/// {@endtemplate}
/// {@macro pulumi_pubsub_subscription_iambinding_subscription_iambinding_args_doc}
class SubscriptionIAMBindingArgs {
  final pulumi.Input<SubscriptionIAMBindingCondition>? condition;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.pubsub.SubscriptionIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;
  /// The subscription name or id to bind to attach IAM policy to.
  final pulumi.Input<String> subscription;

  /// Creates a new [SubscriptionIAMBindingArgs].
  /// [condition] Optional.
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The project in which the resource belongs. If it
  /// [role] The role that should be applied. Only one
  /// [subscription] The subscription name or id to bind to attach IAM policy to.
  SubscriptionIAMBindingArgs({
    this.condition,
    required this.members,
    this.project,
    required this.role,
    required this.subscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<SubscriptionIAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'project': ?project,
      'role': role,
      'subscription': subscription,
    };
  }

  factory SubscriptionIAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionIAMBindingArgs(
      condition: map['condition'] == null ? null : (SubscriptionIAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      members: ((map['members'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: (map['role'] as String).input(),
      subscription: (map['subscription'] as String).input(),
    );
  }
}

