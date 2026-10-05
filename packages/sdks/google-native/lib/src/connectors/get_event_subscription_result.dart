// ignore_for_file: unused_element, unnecessary_cast

import 'event_subscription_destination_response.dart';
import 'event_subscription_status_response.dart';
import 'jmsresponse.dart';

/// Result data returned by getEventSubscription.
class GetEventSubscriptionResult {
  /// Created time.
  final String? createTime;
  /// Optional. The destination to hit when we receive an event
  final EventSubscriptionDestinationResponse? destinations;
  /// Optional. Event type id of the event of current EventSubscription.
  final String? eventTypeId;
  /// Optional. JMS is the source for the event listener.
  final JMSResponse? jms;
  /// Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  final String? name;
  /// Optional. Status indicates the status of the event subscription resource
  final EventSubscriptionStatusResponse? status;
  /// Optional. name of the Subscriber for the current EventSubscription.
  final String? subscriber;
  /// Optional. Link for Subscriber of the current EventSubscription.
  final String? subscriberLink;
  /// Updated time.
  final String? updateTime;

  /// Creates a new [GetEventSubscriptionResult].
  /// [createTime] Created time.
  /// [destinations] Optional. The destination to hit when we receive an event
  /// [eventTypeId] Optional. Event type id of the event of current EventSubscription.
  /// [jms] Optional. JMS is the source for the event listener.
  /// [name] Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  /// [status] Optional. Status indicates the status of the event subscription resource
  /// [subscriber] Optional. name of the Subscriber for the current EventSubscription.
  /// [subscriberLink] Optional. Link for Subscriber of the current EventSubscription.
  /// [updateTime] Updated time.
  const GetEventSubscriptionResult({
    this.createTime,
    this.destinations,
    this.eventTypeId,
    this.jms,
    this.name,
    this.status,
    this.subscriber,
    this.subscriberLink,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'destinations': ?destinations?.toMap(),
      'eventTypeId': ?eventTypeId,
      'jms': ?jms?.toMap(),
      'name': ?name,
      'status': ?status?.toMap(),
      'subscriber': ?subscriber,
      'subscriberLink': ?subscriberLink,
      'updateTime': ?updateTime,
    };
  }

  factory GetEventSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetEventSubscriptionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return EventSubscriptionDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      eventTypeId: (() { final guardedValue = map['eventTypeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jms: (() { final guardedValue = map['jms']; if (guardedValue == null) return null; return JMSResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return EventSubscriptionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subscriber: (() { final guardedValue = map['subscriber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriberLink: (() { final guardedValue = map['subscriberLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
