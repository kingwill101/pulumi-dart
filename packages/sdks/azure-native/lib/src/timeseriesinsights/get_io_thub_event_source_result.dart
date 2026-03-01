// ignore_for_file: unused_element, unnecessary_cast

import 'local_timestamp_response.dart';

/// Result data returned by getIoTHubEventSource.
class GetIoTHubEventSourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The name of the iot hub's consumer group that holds the partitions from which events will be read.
  final String consumerGroupName;
  /// The time the resource was created.
  final String creationTime;
  /// The resource id of the event source in Azure Resource Manager.
  final String eventSourceResourceId;
  /// Resource Id
  final String id;
  /// The name of the iot hub.
  final String iotHubName;
  /// The name of the Shared Access Policy key that grants the Time Series Insights service access to the iot hub. This shared access policy key must grant 'service connect' permissions to the iot hub.
  final String keyName;
  /// The kind of the event source.
  /// Expected value is 'Microsoft.IoTHub'.
  final String kind;
  /// An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  final LocalTimestampResponse? localTimestamp;
  /// Resource location
  final String location;
  /// Resource name
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Resource tags
  final Map<String, String>? tags;
  /// ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  final String? time;
  /// The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  final String? timestampPropertyName;
  /// Resource type
  final String type;

  /// Creates a new [GetIoTHubEventSourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [consumerGroupName] The name of the iot hub's consumer group that holds the partitions from which events will be read.
  /// [creationTime] The time the resource was created.
  /// [eventSourceResourceId] The resource id of the event source in Azure Resource Manager.
  /// [id] Resource Id
  /// [iotHubName] The name of the iot hub.
  /// [keyName] The name of the Shared Access Policy key that grants the Time Series Insights service access to the iot hub. This shared access policy key must grant 'service connect' permissions to the iot hub.
  /// [kind] The kind of the event source.
  /// [localTimestamp] An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  /// [location] Resource location
  /// [name] Resource name
  /// [provisioningState] Provisioning state of the resource.
  /// [tags] Resource tags
  /// [time] ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  /// [timestampPropertyName] The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  /// [type] Resource type
  GetIoTHubEventSourceResult({
    required this.azureApiVersion,
    required this.consumerGroupName,
    required this.creationTime,
    required this.eventSourceResourceId,
    required this.id,
    required this.iotHubName,
    required this.keyName,
    required this.kind,
    this.localTimestamp,
    required this.location,
    required this.name,
    required this.provisioningState,
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
      'eventSourceResourceId': eventSourceResourceId,
      'id': id,
      'iotHubName': iotHubName,
      'keyName': keyName,
      'kind': kind,
      'localTimestamp': ?localTimestamp == null ? null : localTimestamp!.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'time': ?time,
      'timestampPropertyName': ?timestampPropertyName,
      'type': type,
    };
  }

  factory GetIoTHubEventSourceResult.fromMap(Map<String, dynamic> map) {
    return GetIoTHubEventSourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      consumerGroupName: map['consumerGroupName'] as String,
      creationTime: map['creationTime'] as String,
      eventSourceResourceId: map['eventSourceResourceId'] as String,
      id: map['id'] as String,
      iotHubName: map['iotHubName'] as String,
      keyName: map['keyName'] as String,
      kind: map['kind'] as String,
      localTimestamp: map['localTimestamp'] == null ? null : LocalTimestampResponse.fromMap((map['localTimestamp'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      time: map['time'] == null ? null : map['time'] as String,
      timestampPropertyName: map['timestampPropertyName'] == null ? null : map['timestampPropertyName'] as String,
      type: map['type'] as String,
    );
  }
}

