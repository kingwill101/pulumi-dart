// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'event_series.dart';
import 'event_source.dart';
import 'object_reference.dart';

/// Event is a report of an event somewhere in the cluster.  Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class Event {
  /// What action was taken/failed regarding to the Regarding object.
  final pulumi.Input<String?>? action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// The number of times this event has occurred.
  final pulumi.Input<int?>? count;
  /// Time when this Event was first observed.
  final pulumi.Input<String?>? eventTime;
  /// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
  final pulumi.Input<String?>? firstTimestamp;
  /// The object that this event is about.
  final pulumi.Input<ObjectReference> involvedObject;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// The time at which the most recent occurrence of this event was recorded.
  final pulumi.Input<String?>? lastTimestamp;
  /// A human-readable description of the status of this operation.
  final pulumi.Input<String?>? message;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta> metadata;
  /// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  final pulumi.Input<String?>? reason;
  /// Optional secondary object for more complex actions.
  final pulumi.Input<ObjectReference?>? related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  final pulumi.Input<String?>? reportingComponent;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  final pulumi.Input<String?>? reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  final pulumi.Input<EventSeries?>? series;
  /// The component reporting this event. Should be a short machine understandable string.
  final pulumi.Input<EventSource?>? source;
  /// Type of this event (Normal, Warning), new types could be added in the future
  final pulumi.Input<String?>? type;

  /// Creates a new [Event].
  /// [action] What action was taken/failed regarding to the Regarding object.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [count] The number of times this event has occurred.
  /// [eventTime] Time when this Event was first observed.
  /// [firstTimestamp] The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
  /// [involvedObject] The object that this event is about.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [lastTimestamp] The time at which the most recent occurrence of this event was recorded.
  /// [message] A human-readable description of the status of this operation.
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [reason] This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  /// [related] Optional secondary object for more complex actions.
  /// [reportingComponent] Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  /// [reportingInstance] ID of the controller instance, e.g. `kubelet-xyzf`.
  /// [series] Data about the Event series this event represents or nil if it's a singleton Event.
  /// [source] The component reporting this event. Should be a short machine understandable string.
  /// [type] Type of this event (Normal, Warning), new types could be added in the future
  const Event({
    this.action,
    this.apiVersion,
    this.count,
    this.eventTime,
    this.firstTimestamp,
    required this.involvedObject,
    this.kind,
    this.lastTimestamp,
    this.message,
    required this.metadata,
    this.reason,
    this.related,
    this.reportingComponent,
    this.reportingInstance,
    this.series,
    this.source,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'apiVersion': ?apiVersion,
      'count': ?count,
      'eventTime': ?eventTime,
      'firstTimestamp': ?firstTimestamp,
      'involvedObject': pulumi.Input.mapInputValue<ObjectReference, Map<String, dynamic>>(involvedObject, (value) => value.toMap()),
      'kind': ?kind,
      'lastTimestamp': ?lastTimestamp,
      'message': ?message,
      'metadata': pulumi.Input.mapInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'reason': ?reason,
      'related': ?pulumi.Input.mapOptionalInputValue<ObjectReference, Map<String, dynamic>>(related, (value) => value.toMap()),
      'reportingComponent': ?reportingComponent,
      'reportingInstance': ?reportingInstance,
      'series': ?pulumi.Input.mapOptionalInputValue<EventSeries, Map<String, dynamic>>(series, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<EventSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      eventTime: (() { final guardedValue = map['eventTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstTimestamp: (() { final guardedValue = map['firstTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      involvedObject: pulumi.Input.fromValue(ObjectReference.fromMap((map['involvedObject']! as Map).cast<String, dynamic>())),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTimestamp: (() { final guardedValue = map['lastTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: pulumi.Input.fromValue(ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      related: (() { final guardedValue = map['related']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reportingComponent: (() { final guardedValue = map['reportingComponent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportingInstance: (() { final guardedValue = map['reportingInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      series: (() { final guardedValue = map['series']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSeries.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
