// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_handler.dart';
import 'event_listener.dart';

/// Properties of a hub.
class WebPubSubHubProperties {
  /// The settings for configuring if anonymous connections are allowed for this hub: "allow" or "deny". Default to "deny".
  final pulumi.Input<String>? anonymousConnectPolicy;
  /// Event handler of a hub.
  final pulumi.Input<List<EventHandler>>? eventHandlers;
  /// Event listener settings for forwarding your client events to listeners.
  /// Event listener is transparent to Web PubSub clients, and it doesn't return any result to clients nor interrupt the lifetime of clients.
  /// One event can be sent to multiple listeners, as long as it matches the filters in those listeners. The order of the array elements doesn't matter.
  /// Maximum count of event listeners among all hubs is 10.
  final pulumi.Input<List<EventListener>>? eventListeners;
  /// The settings for configuring the WebSocket ping-pong interval in seconds for all clients in the hub. Valid range: 1 to 120. Default to 20 seconds.
  final pulumi.Input<int>? webSocketKeepAliveIntervalInSeconds;

  /// Creates a new [WebPubSubHubProperties].
  /// [anonymousConnectPolicy] The settings for configuring if anonymous connections are allowed for this hub: "allow" or "deny". Default to "deny".
  /// [eventHandlers] Event handler of a hub.
  /// [eventListeners] Event listener settings for forwarding your client events to listeners.
  /// [webSocketKeepAliveIntervalInSeconds] The settings for configuring the WebSocket ping-pong interval in seconds for all clients in the hub. Valid range: 1 to 120. Default to 20 seconds.
  WebPubSubHubProperties({
    this.anonymousConnectPolicy,
    this.eventHandlers,
    this.eventListeners,
    this.webSocketKeepAliveIntervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousConnectPolicy': ?anonymousConnectPolicy,
      'eventHandlers': ?pulumi.Input.mapOptionalInputValue<List<EventHandler>, List<Map<String, dynamic>>>(eventHandlers, (value) => pulumi.Input.encodeList<EventHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventListeners': ?pulumi.Input.mapOptionalInputValue<List<EventListener>, List<Map<String, dynamic>>>(eventListeners, (value) => pulumi.Input.encodeList<EventListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webSocketKeepAliveIntervalInSeconds': ?webSocketKeepAliveIntervalInSeconds,
    };
  }

  factory WebPubSubHubProperties.fromMap(Map<String, dynamic> map) {
    return WebPubSubHubProperties(
      anonymousConnectPolicy: map['anonymousConnectPolicy'] == null ? null : (map['anonymousConnectPolicy'] as String).input(),
      eventHandlers: map['eventHandlers'] == null ? null : (pulumi.Input.decodeList<EventHandler>(map['eventHandlers'], (value) => EventHandler.fromMap((value as Map).cast<String, dynamic>()))).input(),
      eventListeners: map['eventListeners'] == null ? null : (pulumi.Input.decodeList<EventListener>(map['eventListeners'], (value) => EventListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webSocketKeepAliveIntervalInSeconds: map['webSocketKeepAliveIntervalInSeconds'] == null ? null : (map['webSocketKeepAliveIntervalInSeconds'] as int).input(),
    );
  }
}

