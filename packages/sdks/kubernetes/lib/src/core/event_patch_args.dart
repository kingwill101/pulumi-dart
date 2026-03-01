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
  EventPatchArgs({
    pulumi.Output<String>? action,
    pulumi.Output<String>? apiVersion,
    pulumi.Output<int>? count,
    pulumi.Output<String>? eventTime,
    pulumi.Output<String>? firstTimestamp,
    pulumi.Output<ObjectReferencePatch>? involvedObject,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? lastTimestamp,
    pulumi.Output<String>? message,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<String>? reason,
    pulumi.Output<ObjectReferencePatch>? related,
    pulumi.Output<String>? reportingComponent,
    pulumi.Output<String>? reportingInstance,
    pulumi.Output<EventSeriesPatch>? series,
    pulumi.Output<EventSourcePatch>? source,
    pulumi.Output<String>? type,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      count = pulumi.Input.asOptionalInput<int>(count),
      eventTime = pulumi.Input.asOptionalInput<String>(eventTime),
      firstTimestamp = pulumi.Input.asOptionalInput<String>(firstTimestamp),
      involvedObject = pulumi.Input.asOptionalInput<ObjectReferencePatch>(involvedObject),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      lastTimestamp = pulumi.Input.asOptionalInput<String>(lastTimestamp),
      message = pulumi.Input.asOptionalInput<String>(message),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      reason = pulumi.Input.asOptionalInput<String>(reason),
      related = pulumi.Input.asOptionalInput<ObjectReferencePatch>(related),
      reportingComponent = pulumi.Input.asOptionalInput<String>(reportingComponent),
      reportingInstance = pulumi.Input.asOptionalInput<String>(reportingInstance),
      series = pulumi.Input.asOptionalInput<EventSeriesPatch>(series),
      source = pulumi.Input.asOptionalInput<EventSourcePatch>(source),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      count: map['count'] == null ? null : pulumi.Output.create<int>(map['count'] as int),
      eventTime: map['eventTime'] == null ? null : pulumi.Output.create<String>(map['eventTime'] as String),
      firstTimestamp: map['firstTimestamp'] == null ? null : pulumi.Output.create<String>(map['firstTimestamp'] as String),
      involvedObject: map['involvedObject'] == null ? null : pulumi.Output.create<ObjectReferencePatch>(ObjectReferencePatch.fromMap((map['involvedObject'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      lastTimestamp: map['lastTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastTimestamp'] as String),
      message: map['message'] == null ? null : pulumi.Output.create<String>(map['message'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      reason: map['reason'] == null ? null : pulumi.Output.create<String>(map['reason'] as String),
      related: map['related'] == null ? null : pulumi.Output.create<ObjectReferencePatch>(ObjectReferencePatch.fromMap((map['related'] as Map).cast<String, dynamic>())),
      reportingComponent: map['reportingComponent'] == null ? null : pulumi.Output.create<String>(map['reportingComponent'] as String),
      reportingInstance: map['reportingInstance'] == null ? null : pulumi.Output.create<String>(map['reportingInstance'] as String),
      series: map['series'] == null ? null : pulumi.Output.create<EventSeriesPatch>(EventSeriesPatch.fromMap((map['series'] as Map).cast<String, dynamic>())),
      source: map['source'] == null ? null : pulumi.Output.create<EventSourcePatch>(EventSourcePatch.fromMap((map['source'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

