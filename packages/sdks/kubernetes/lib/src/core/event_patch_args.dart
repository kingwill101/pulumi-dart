// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'event_series_patch.dart';
import 'event_source_patch.dart';
import 'object_reference_patch.dart';

/// {@template pulumi_core_v1_event_patch_args_doc}
/// The set of arguments for EventPatch.
/// {@endtemplate}
/// {@macro pulumi_core_v1_event_patch_args_doc}
class EventPatchArgs {
  /// What action was taken/failed regarding to the Regarding object.
  final pulumi.Input<String>? action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// The number of times this event has occurred.
  final pulumi.Input<int>? count;
  /// Time when this Event was first observed.
  final pulumi.Input<String>? eventTime;
  /// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
  final pulumi.Input<String>? firstTimestamp;
  /// The object that this event is about.
  final pulumi.Input<ObjectReferencePatch>? involvedObject;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// The time at which the most recent occurrence of this event was recorded.
  final pulumi.Input<String>? lastTimestamp;
  /// A human-readable description of the status of this operation.
  final pulumi.Input<String>? message;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  final pulumi.Input<String>? reason;
  /// Optional secondary object for more complex actions.
  final pulumi.Input<ObjectReferencePatch>? related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  final pulumi.Input<String>? reportingComponent;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  final pulumi.Input<String>? reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  final pulumi.Input<EventSeriesPatch>? series;
  /// The component reporting this event. Should be a short machine understandable string.
  final pulumi.Input<EventSourcePatch>? source;
  /// Type of this event (Normal, Warning), new types could be added in the future
  final pulumi.Input<String>? type;

  /// Creates a new [EventPatchArgs].
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
  const EventPatchArgs({
    this.action,
    this.apiVersion,
    this.count,
    this.eventTime,
    this.firstTimestamp,
    this.involvedObject,
    this.kind,
    this.lastTimestamp,
    this.message,
    this.metadata,
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
      'involvedObject': ?pulumi.Input.mapOptionalInputValue<ObjectReferencePatch, Map<String, dynamic>>(involvedObject, (value) => value.toMap()),
      'kind': ?kind,
      'lastTimestamp': ?lastTimestamp,
      'message': ?message,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'reason': ?reason,
      'related': ?pulumi.Input.mapOptionalInputValue<ObjectReferencePatch, Map<String, dynamic>>(related, (value) => value.toMap()),
      'reportingComponent': ?reportingComponent,
      'reportingInstance': ?reportingInstance,
      'series': ?pulumi.Input.mapOptionalInputValue<EventSeriesPatch, Map<String, dynamic>>(series, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<EventSourcePatch, Map<String, dynamic>>(source, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory EventPatchArgs.fromMap(Map<String, dynamic> map) {
    return EventPatchArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      eventTime: (() { final guardedValue = map['eventTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstTimestamp: (() { final guardedValue = map['firstTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      involvedObject: (() { final guardedValue = map['involvedObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTimestamp: (() { final guardedValue = map['lastTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      related: (() { final guardedValue = map['related']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reportingComponent: (() { final guardedValue = map['reportingComponent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportingInstance: (() { final guardedValue = map['reportingInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      series: (() { final guardedValue = map['series']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSeriesPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

