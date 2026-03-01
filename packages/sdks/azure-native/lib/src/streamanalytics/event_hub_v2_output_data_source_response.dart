// ignore_for_file: unused_element, unnecessary_cast


/// Describes an Event Hub output data source.
class EventHubV2OutputDataSourceResponse {
  /// Authentication Mode.
  final String? authenticationMode;
  /// The name of the Event Hub. Required on PUT (CreateOrReplace) requests.
  final String? eventHubName;
  /// The key/column that is used to determine to which partition to send event data.
  final String? partitionKey;
  /// The properties associated with this Event Hub output.
  final List<String>? propertyColumns;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final String? serviceBusNamespace;
  /// The shared access policy key for the specified shared access policy. Required on PUT (CreateOrReplace) requests.
  final String? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT (CreateOrReplace) requests.
  final String? sharedAccessPolicyName;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.EventHub/EventHub'.
  final String type;

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
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
      eventHubName: map['eventHubName'] == null ? null : map['eventHubName'] as String,
      partitionKey: map['partitionKey'] == null ? null : map['partitionKey'] as String,
      propertyColumns: map['propertyColumns'] == null ? null : (map['propertyColumns'] as List).cast<String>(),
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : map['serviceBusNamespace'] as String,
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : map['sharedAccessPolicyKey'] as String,
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : map['sharedAccessPolicyName'] as String,
      type: map['type'] as String,
    );
  }
}

