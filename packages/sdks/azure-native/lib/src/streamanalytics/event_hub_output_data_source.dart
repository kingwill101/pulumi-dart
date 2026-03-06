// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an Event Hub output data source.
class EventHubOutputDataSource {
  /// Authentication Mode.
  final pulumi.Input<String>? authenticationMode;
  /// The name of the Event Hub. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? eventHubName;
  /// The key/column that is used to determine to which partition to send event data.
  final pulumi.Input<String>? partitionKey;
  /// The properties associated with this Event Hub output.
  final pulumi.Input<List<String>>? propertyColumns;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? serviceBusNamespace;
  /// The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.ServiceBus/EventHub'.
  final pulumi.Input<String> type;

  /// Creates a new [EventHubOutputDataSource].
  /// [authenticationMode] Authentication Mode.
  /// [eventHubName] The name of the Event Hub. Required on PUT (CreateOrReplace) requests.
  /// [partitionKey] The key/column that is used to determine to which partition to send event data.
  /// [propertyColumns] The properties associated with this Event Hub output.
  /// [serviceBusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  const EventHubOutputDataSource({
    this.authenticationMode,
    this.eventHubName,
    this.partitionKey,
    this.propertyColumns,
    this.serviceBusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'eventHubName': ?eventHubName,
      'partitionKey': ?partitionKey,
      'propertyColumns': ?propertyColumns,
      'serviceBusNamespace': ?serviceBusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'type': type,
    };
  }

  factory EventHubOutputDataSource.fromMap(Map<String, dynamic> map) {
    return EventHubOutputDataSource(
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubName: (() { final guardedValue = map['eventHubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyColumns: (() { final guardedValue = map['propertyColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceBusNamespace: (() { final guardedValue = map['serviceBusNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedAccessPolicyKey: (() { final guardedValue = map['sharedAccessPolicyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedAccessPolicyName: (() { final guardedValue = map['sharedAccessPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

