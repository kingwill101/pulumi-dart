// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Event Hub endpoint.
/// The managed identity of Web PubSub service must be enabled, and the identity should have the "Azure Event Hubs Data sender" role to access Event Hub.
class EventHubEndpointResponse {
  /// The name of the Event Hub.
  final pulumi.Input<String> eventHubName;
  /// The fully qualified namespace name of the Event Hub resource. For example, "example.servicebus.windows.net".
  final pulumi.Input<String> fullyQualifiedNamespace;
  /// Expected value is 'EventHub'.
  final pulumi.Input<String> type;

  /// Creates a new [EventHubEndpointResponse].
  /// [eventHubName] The name of the Event Hub.
  /// [fullyQualifiedNamespace] The fully qualified namespace name of the Event Hub resource. For example, "example.servicebus.windows.net".
  /// [type] Expected value is 'EventHub'.
  EventHubEndpointResponse({
    required this.eventHubName,
    required this.fullyQualifiedNamespace,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubName': eventHubName,
      'fullyQualifiedNamespace': fullyQualifiedNamespace,
      'type': type,
    };
  }

  factory EventHubEndpointResponse.fromMap(Map<String, dynamic> map) {
    return EventHubEndpointResponse(
      eventHubName: pulumi.Input.fromValue(map['eventHubName'] as String),
      fullyQualifiedNamespace: pulumi.Input.fromValue(map['fullyQualifiedNamespace'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

