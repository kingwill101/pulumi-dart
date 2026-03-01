// ignore_for_file: unused_element, unnecessary_cast

import 'event_hub_endpoint_response.dart';
import 'event_name_filter_response.dart';

/// A setting defines which kinds of events should be sent to which endpoint.
class EventListenerResponse {
  /// An endpoint specifying where Web PubSub should send events to.
  final EventHubEndpointResponse endpoint;
  /// A base class for event filter which determines whether an event should be sent to an event listener.
  final EventNameFilterResponse filter;

  /// Creates a new [EventListenerResponse].
  /// [endpoint] An endpoint specifying where Web PubSub should send events to.
  /// [filter] A base class for event filter which determines whether an event should be sent to an event listener.
  EventListenerResponse({
    required this.endpoint,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint.toMap(),
      'filter': filter.toMap(),
    };
  }

  factory EventListenerResponse.fromMap(Map<String, dynamic> map) {
    return EventListenerResponse(
      endpoint: EventHubEndpointResponse.fromMap((map['endpoint'] as Map).cast<String, dynamic>()),
      filter: EventNameFilterResponse.fromMap((map['filter'] as Map).cast<String, dynamic>()),
    );
  }
}

