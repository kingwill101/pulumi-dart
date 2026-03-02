// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_handler_response.dart';
import 'event_listener_response.dart';

/// Properties of a hub.
class WebPubSubHubPropertiesResponse {
  /// The settings for configuring if anonymous connections are allowed for this hub: "allow" or "deny". Default to "deny".
  final pulumi.Input<String>? anonymousConnectPolicy;
  /// Event handler of a hub.
  final pulumi.Input<List<EventHandlerResponse>>? eventHandlers;
  /// Event listener settings for forwarding your client events to listeners.
  /// Event listener is transparent to Web PubSub clients, and it doesn't return any result to clients nor interrupt the lifetime of clients.
  /// One event can be sent to multiple listeners, as long as it matches the filters in those listeners. The order of the array elements doesn't matter.
  /// Maximum count of event listeners among all hubs is 10.
  final pulumi.Input<List<EventListenerResponse>>? eventListeners;
  /// The settings for configuring the WebSocket ping-pong interval in seconds for all clients in the hub. Valid range: 1 to 120. Default to 20 seconds.
  final pulumi.Input<int>? webSocketKeepAliveIntervalInSeconds;

  /// Creates a new [WebPubSubHubPropertiesResponse].
  /// [anonymousConnectPolicy] The settings for configuring if anonymous connections are allowed for this hub: "allow" or "deny". Default to "deny".
  /// [eventHandlers] Event handler of a hub.
  /// [eventListeners] Event listener settings for forwarding your client events to listeners.
  /// [webSocketKeepAliveIntervalInSeconds] The settings for configuring the WebSocket ping-pong interval in seconds for all clients in the hub. Valid range: 1 to 120. Default to 20 seconds.
  WebPubSubHubPropertiesResponse({
    this.anonymousConnectPolicy,
    this.eventHandlers,
    this.eventListeners,
    this.webSocketKeepAliveIntervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousConnectPolicy': ?anonymousConnectPolicy,
      'eventHandlers': ?pulumi.Input.mapOptionalInputValue<List<EventHandlerResponse>, List<Map<String, dynamic>>>(eventHandlers, (value) => pulumi.Input.encodeList<EventHandlerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventListeners': ?pulumi.Input.mapOptionalInputValue<List<EventListenerResponse>, List<Map<String, dynamic>>>(eventListeners, (value) => pulumi.Input.encodeList<EventListenerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webSocketKeepAliveIntervalInSeconds': ?webSocketKeepAliveIntervalInSeconds,
    };
  }

  factory WebPubSubHubPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WebPubSubHubPropertiesResponse(
      anonymousConnectPolicy: map['anonymousConnectPolicy'] == null ? null : (map['anonymousConnectPolicy'] as String).input(),
      eventHandlers: map['eventHandlers'] == null ? null : (pulumi.Input.decodeList<EventHandlerResponse>(map['eventHandlers'], (value) => EventHandlerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      eventListeners: map['eventListeners'] == null ? null : (pulumi.Input.decodeList<EventListenerResponse>(map['eventListeners'], (value) => EventListenerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webSocketKeepAliveIntervalInSeconds: map['webSocketKeepAliveIntervalInSeconds'] == null ? null : (map['webSocketKeepAliveIntervalInSeconds'] as int).input(),
    );
  }
}

