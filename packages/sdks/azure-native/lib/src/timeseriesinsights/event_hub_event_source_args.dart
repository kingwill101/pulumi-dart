// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_timestamp.dart';

/// {@template pulumi_timeseriesinsights_event_hub_event_source_args_doc}
/// The set of arguments for EventHubEventSource.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_event_hub_event_source_args_doc}
class EventHubEventSourceArgs {
  /// The name of the event hub's consumer group that holds the partitions from which events will be read.
  final pulumi.Input<String> consumerGroupName;
  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;
  /// The name of the event hub.
  final pulumi.Input<String> eventHubName;
  /// Name of the event source.
  final pulumi.Input<String>? eventSourceName;
  /// The resource id of the event source in Azure Resource Manager.
  final pulumi.Input<String> eventSourceResourceId;
  /// The name of the SAS key that grants the Time Series Insights service access to the event hub. The shared access policies for this key must grant 'Listen' permissions to the event hub.
  final pulumi.Input<String> keyName;
  /// The kind of the event source.
  /// Expected value is 'Microsoft.EventHub'.
  final pulumi.Input<String> kind;
  /// An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  final pulumi.Input<LocalTimestamp>? localTimestamp;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service bus that contains the event hub.
  final pulumi.Input<String> serviceBusNamespace;
  /// The value of the shared access key that grants the Time Series Insights service read access to the event hub. This property is not shown in event source responses.
  final pulumi.Input<String> sharedAccessKey;
  /// Key-value pairs of additional properties for the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  final pulumi.Input<String>? time;
  /// The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  final pulumi.Input<String>? timestampPropertyName;
  /// The type of the ingressStartAt, It can be "EarliestAvailable", "EventSourceCreationTime", "CustomEnqueuedTime".
  final pulumi.Input<String>? type;

  /// Creates a new [EventHubEventSourceArgs].
  /// [consumerGroupName] The name of the event hub's consumer group that holds the partitions from which events will be read.
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [eventHubName] The name of the event hub.
  /// [eventSourceName] Name of the event source.
  /// [eventSourceResourceId] The resource id of the event source in Azure Resource Manager.
  /// [keyName] The name of the SAS key that grants the Time Series Insights service access to the event hub. The shared access policies for this key must grant 'Listen' permissions to the event hub.
  /// [kind] The kind of the event source.
  /// [localTimestamp] An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  /// [location] The location of the resource.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [serviceBusNamespace] The name of the service bus that contains the event hub.
  /// [sharedAccessKey] The value of the shared access key that grants the Time Series Insights service read access to the event hub. This property is not shown in event source responses.
  /// [tags] Key-value pairs of additional properties for the resource.
  /// [time] ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  /// [timestampPropertyName] The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  /// [type] The type of the ingressStartAt, It can be "EarliestAvailable", "EventSourceCreationTime", "CustomEnqueuedTime".
  EventHubEventSourceArgs({
    required this.consumerGroupName,
    required this.environmentName,
    required this.eventHubName,
    this.eventSourceName,
    required this.eventSourceResourceId,
    required this.keyName,
    required this.kind,
    this.localTimestamp,
    this.location,
    required this.resourceGroupName,
    required this.serviceBusNamespace,
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
      'eventHubName': eventHubName,
      'eventSourceName': ?eventSourceName,
      'eventSourceResourceId': eventSourceResourceId,
      'keyName': keyName,
      'kind': kind,
      'localTimestamp': ?pulumi.Input.mapOptionalInputValue<LocalTimestamp, Map<String, dynamic>>(localTimestamp, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'serviceBusNamespace': serviceBusNamespace,
      'sharedAccessKey': sharedAccessKey,
      'tags': ?tags,
      'time': ?time,
      'timestampPropertyName': ?timestampPropertyName,
      'type': ?type,
    };
  }

  factory EventHubEventSourceArgs.fromMap(Map<String, dynamic> map) {
    return EventHubEventSourceArgs(
      consumerGroupName: (map['consumerGroupName'] as String).input(),
      environmentName: (map['environmentName'] as String).input(),
      eventHubName: (map['eventHubName'] as String).input(),
      eventSourceName: map['eventSourceName'] == null ? null : (map['eventSourceName'] as String).input(),
      eventSourceResourceId: (map['eventSourceResourceId'] as String).input(),
      keyName: (map['keyName'] as String).input(),
      kind: (map['kind'] as String).input(),
      localTimestamp: map['localTimestamp'] == null ? null : (LocalTimestamp.fromMap((map['localTimestamp'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceBusNamespace: (map['serviceBusNamespace'] as String).input(),
      sharedAccessKey: (map['sharedAccessKey'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      time: map['time'] == null ? null : (map['time'] as String).input(),
      timestampPropertyName: map['timestampPropertyName'] == null ? null : (map['timestampPropertyName'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

