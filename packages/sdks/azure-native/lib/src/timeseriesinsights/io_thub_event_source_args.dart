// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_timestamp.dart';

/// {@template pulumi_timeseriesinsights_io_thub_event_source_args_doc}
/// The set of arguments for IoTHubEventSource.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_io_thub_event_source_args_doc}
class IoTHubEventSourceArgs {
  /// The name of the iot hub's consumer group that holds the partitions from which events will be read.
  final pulumi.Input<String> consumerGroupName;

  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;

  /// Name of the event source.
  final pulumi.Input<String>? eventSourceName;

  /// The resource id of the event source in Azure Resource Manager.
  final pulumi.Input<String> eventSourceResourceId;

  /// The name of the iot hub.
  final pulumi.Input<String> iotHubName;

  /// The name of the Shared Access Policy key that grants the Time Series Insights service access to the iot hub. This shared access policy key must grant 'service connect' permissions to the iot hub.
  final pulumi.Input<String> keyName;

  /// The kind of the event source.
  /// Expected value is 'Microsoft.IoTHub'.
  final pulumi.Input<String> kind;

  /// An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  final pulumi.Input<LocalTimestamp>? localTimestamp;

  /// The location of the resource.
  final pulumi.Input<String>? location;

  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The value of the Shared Access Policy key that grants the Time Series Insights service read access to the iot hub. This property is not shown in event source responses.
  final pulumi.Input<String> sharedAccessKey;

  /// Key-value pairs of additional properties for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  final pulumi.Input<String>? time;

  /// The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  final pulumi.Input<String>? timestampPropertyName;

  /// The type of the ingressStartAt, It can be "EarliestAvailable", "EventSourceCreationTime", "CustomEnqueuedTime".
  final pulumi.Input<String>? type;

  /// Creates a new [IoTHubEventSourceArgs].
  /// [consumerGroupName] The name of the iot hub's consumer group that holds the partitions from which events will be read.
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [eventSourceName] Name of the event source.
  /// [eventSourceResourceId] The resource id of the event source in Azure Resource Manager.
  /// [iotHubName] The name of the iot hub.
  /// [keyName] The name of the Shared Access Policy key that grants the Time Series Insights service access to the iot hub. This shared access policy key must grant 'service connect' permissions to the iot hub.
  /// [kind] The kind of the event source.
  /// [localTimestamp] An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  /// [location] The location of the resource.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [sharedAccessKey] The value of the Shared Access Policy key that grants the Time Series Insights service read access to the iot hub. This property is not shown in event source responses.
  /// [tags] Key-value pairs of additional properties for the resource.
  /// [time] ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  /// [timestampPropertyName] The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  /// [type] The type of the ingressStartAt, It can be "EarliestAvailable", "EventSourceCreationTime", "CustomEnqueuedTime".
  IoTHubEventSourceArgs({
    required this.consumerGroupName,
    required this.environmentName,
    this.eventSourceName,
    required this.eventSourceResourceId,
    required this.iotHubName,
    required this.keyName,
    required this.kind,
    this.localTimestamp,
    this.location,
    required this.resourceGroupName,
    required this.sharedAccessKey,
    this.tags,
    this.time,
    this.timestampPropertyName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupName': consumerGroupName,
      'environmentName': environmentName,
      'eventSourceName': ?eventSourceName,
      'eventSourceResourceId': eventSourceResourceId,
      'iotHubName': iotHubName,
      'keyName': keyName,
      'kind': kind,
      'localTimestamp':
          ?pulumi.Input.mapOptionalInputValue<
            LocalTimestamp,
            Map<String, dynamic>
          >(localTimestamp, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sharedAccessKey': sharedAccessKey,
      'tags': ?tags,
      'time': ?time,
      'timestampPropertyName': ?timestampPropertyName,
      'type': ?type,
    };
  }

  factory IoTHubEventSourceArgs.fromMap(Map<String, dynamic> map) {
    return IoTHubEventSourceArgs(
      consumerGroupName: pulumi.Input.fromValue(
        map['consumerGroupName'] as String,
      ),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      eventSourceName: (() {
        final guardedValue = map['eventSourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventSourceResourceId: pulumi.Input.fromValue(
        map['eventSourceResourceId'] as String,
      ),
      iotHubName: pulumi.Input.fromValue(map['iotHubName'] as String),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      localTimestamp: (() {
        final guardedValue = map['localTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LocalTimestamp.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sharedAccessKey: pulumi.Input.fromValue(map['sharedAccessKey'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      time: (() {
        final guardedValue = map['time'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timestampPropertyName: (() {
        final guardedValue = map['timestampPropertyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
