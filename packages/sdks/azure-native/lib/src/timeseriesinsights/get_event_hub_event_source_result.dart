// ignore_for_file: unused_element, unnecessary_cast

import 'local_timestamp_response.dart';

/// Result data returned by getEventHubEventSource.
class GetEventHubEventSourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The name of the event hub's consumer group that holds the partitions from which events will be read.
  final String consumerGroupName;
  /// The time the resource was created.
  final String creationTime;
  /// The name of the event hub.
  final String eventHubName;
  /// The resource id of the event source in Azure Resource Manager.
  final String eventSourceResourceId;
  /// Resource Id
  final String id;
  /// The name of the SAS key that grants the Time Series Insights service access to the event hub. The shared access policies for this key must grant 'Listen' permissions to the event hub.
  final String keyName;
  /// The kind of the event source.
  /// Expected value is 'Microsoft.EventHub'.
  final String kind;
  /// An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  final LocalTimestampResponse? localTimestamp;
  /// Resource location
  final String location;
  /// Resource name
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// The name of the service bus that contains the event hub.
  final String serviceBusNamespace;
  /// Resource tags
  final Map<String, String>? tags;
  /// ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  final String? time;
  /// The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  final String? timestampPropertyName;
  /// Resource type
  final String type;

  /// Creates a new [GetEventHubEventSourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [consumerGroupName] The name of the event hub's consumer group that holds the partitions from which events will be read.
  /// [creationTime] The time the resource was created.
  /// [eventHubName] The name of the event hub.
  /// [eventSourceResourceId] The resource id of the event source in Azure Resource Manager.
  /// [id] Resource Id
  /// [keyName] The name of the SAS key that grants the Time Series Insights service access to the event hub. The shared access policies for this key must grant 'Listen' permissions to the event hub.
  /// [kind] The kind of the event source.
  /// [localTimestamp] An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  /// [location] Resource location
  /// [name] Resource name
  /// [provisioningState] Provisioning state of the resource.
  /// [serviceBusNamespace] The name of the service bus that contains the event hub.
  /// [tags] Resource tags
  /// [time] ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  /// [timestampPropertyName] The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  /// [type] Resource type
  const GetEventHubEventSourceResult({
    required this.azureApiVersion,
    required this.consumerGroupName,
    required this.creationTime,
    required this.eventHubName,
    required this.eventSourceResourceId,
    required this.id,
    required this.keyName,
    required this.kind,
    this.localTimestamp,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.serviceBusNamespace,
    this.tags,
    this.time,
    this.timestampPropertyName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'consumerGroupName': consumerGroupName,
      'creationTime': creationTime,
      'eventHubName': eventHubName,
      'eventSourceResourceId': eventSourceResourceId,
      'id': id,
      'keyName': keyName,
      'kind': kind,
      'localTimestamp': ?localTimestamp?.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'serviceBusNamespace': serviceBusNamespace,
      'tags': ?tags,
      'time': ?time,
      'timestampPropertyName': ?timestampPropertyName,
      'type': type,
    };
  }

  factory GetEventHubEventSourceResult.fromMap(Map<String, dynamic> map) {
    return GetEventHubEventSourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      consumerGroupName: map['consumerGroupName'] as String,
      creationTime: map['creationTime'] as String,
      eventHubName: map['eventHubName'] as String,
      eventSourceResourceId: map['eventSourceResourceId'] as String,
      id: map['id'] as String,
      keyName: map['keyName'] as String,
      kind: map['kind'] as String,
      localTimestamp: (() { final guardedValue = map['localTimestamp']; if (guardedValue == null) return null; return LocalTimestampResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceBusNamespace: map['serviceBusNamespace'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timestampPropertyName: (() { final guardedValue = map['timestampPropertyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
