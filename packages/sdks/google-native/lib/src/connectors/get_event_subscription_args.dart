// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_get_event_subscription_args_doc}
/// Arguments for getEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_get_event_subscription_args_doc}
class GetEventSubscriptionArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> eventSubscriptionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEventSubscriptionArgs].
  /// [connectionId] Required.
  /// [eventSubscriptionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEventSubscriptionArgs({
    required pulumi.Output<String> connectionId,
    required pulumi.Output<String> eventSubscriptionId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      connectionId = pulumi.Input.asInput<String>(connectionId),
      eventSubscriptionId = pulumi.Input.asInput<String>(eventSubscriptionId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'eventSubscriptionId': eventSubscriptionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetEventSubscriptionArgs(
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      eventSubscriptionId: pulumi.Output.create<String>(map['eventSubscriptionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

