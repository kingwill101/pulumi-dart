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
    required this.connectionId,
    required this.eventSubscriptionId,
    required this.location,
    this.project,
  });

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
      connectionId: (map['connectionId'] as String).input(),
      eventSubscriptionId: (map['eventSubscriptionId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

