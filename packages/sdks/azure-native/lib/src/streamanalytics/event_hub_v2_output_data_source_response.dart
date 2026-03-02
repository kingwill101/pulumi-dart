// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an Event Hub output data source.
class EventHubV2OutputDataSourceResponse {
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
  /// Expected value is 'Microsoft.EventHub/EventHub'.
  final pulumi.Input<String> type;

  /// Creates a new [EventHubV2OutputDataSourceResponse].
  /// [authenticationMode] Authentication Mode.
  /// [eventHubName] The name of the Event Hub. Required on PUT (CreateOrReplace) requests.
  /// [partitionKey] The key/column that is used to determine to which partition to send event data.
  /// [propertyColumns] The properties associated with this Event Hub output.
  /// [serviceBusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  EventHubV2OutputDataSourceResponse({
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

  factory EventHubV2OutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return EventHubV2OutputDataSourceResponse(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode'] as String).input(),
      eventHubName: map['eventHubName'] == null ? null : (map['eventHubName'] as String).input(),
      partitionKey: map['partitionKey'] == null ? null : (map['partitionKey'] as String).input(),
      propertyColumns: map['propertyColumns'] == null ? null : ((map['propertyColumns'] as List).cast<String>()).input(),
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : (map['serviceBusNamespace'] as String).input(),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : (map['sharedAccessPolicyKey'] as String).input(),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : (map['sharedAccessPolicyName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

