// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_destination.dart';
import 'jms.dart';

/// {@template pulumi_connectors_v1_event_subscription_args_doc}
/// The set of arguments for EventSubscription.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_event_subscription_args_doc}
class EventSubscriptionArgs {
  final pulumi.Input<String> connectionId;
  /// Optional. The destination to hit when we receive an event
  final pulumi.Input<EventSubscriptionDestination>? destinations;
  /// Required. Identifier to assign to the Event Subscription. Must be unique within scope of the parent resource.
  final pulumi.Input<String> eventSubscriptionId;
  /// Optional. Event type id of the event of current EventSubscription.
  final pulumi.Input<String>? eventTypeId;
  /// Optional. JMS is the source for the event listener.
  final pulumi.Input<JMS>? jms;
  final pulumi.Input<String>? location;
  /// Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. name of the Subscriber for the current EventSubscription.
  final pulumi.Input<String>? subscriber;
  /// Optional. Link for Subscriber of the current EventSubscription.
  final pulumi.Input<String>? subscriberLink;

  /// Creates a new [EventSubscriptionArgs].
  /// [connectionId] Required.
  /// [destinations] Optional. The destination to hit when we receive an event
  /// [eventSubscriptionId] Required. Identifier to assign to the Event Subscription. Must be unique within scope of the parent resource.
  /// [eventTypeId] Optional. Event type id of the event of current EventSubscription.
  /// [jms] Optional. JMS is the source for the event listener.
  /// [location] Optional.
  /// [name] Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  /// [project] Optional.
  /// [subscriber] Optional. name of the Subscriber for the current EventSubscription.
  /// [subscriberLink] Optional. Link for Subscriber of the current EventSubscription.
  EventSubscriptionArgs({
    required this.connectionId,
    this.destinations,
    required this.eventSubscriptionId,
    this.eventTypeId,
    this.jms,
    this.location,
    this.name,
    this.project,
    this.subscriber,
    this.subscriberLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'destinations': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionDestination, Map<String, dynamic>>(destinations, (value) => value.toMap()),
      'eventSubscriptionId': eventSubscriptionId,
      'eventTypeId': ?eventTypeId,
      'jms': ?pulumi.Input.mapOptionalInputValue<JMS, Map<String, dynamic>>(jms, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'subscriber': ?subscriber,
      'subscriberLink': ?subscriberLink,
    };
  }

  factory EventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionArgs(
      connectionId: (map['connectionId'] as String).input(),
      destinations: map['destinations'] == null ? null : (EventSubscriptionDestination.fromMap((map['destinations']! as Map).cast<String, dynamic>())).input(),
      eventSubscriptionId: (map['eventSubscriptionId'] as String).input(),
      eventTypeId: map['eventTypeId'] == null ? null : (map['eventTypeId']! as String).input(),
      jms: map['jms'] == null ? null : (JMS.fromMap((map['jms']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      subscriber: map['subscriber'] == null ? null : (map['subscriber']! as String).input(),
      subscriberLink: map['subscriberLink'] == null ? null : (map['subscriberLink']! as String).input(),
    );
  }
}

