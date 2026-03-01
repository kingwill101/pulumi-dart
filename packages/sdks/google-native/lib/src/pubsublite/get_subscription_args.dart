// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsublite_v1_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_pubsublite_v1_get_subscription_args_doc}
class GetSubscriptionArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [subscriptionId] Required.
  GetSubscriptionArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> subscriptionId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

