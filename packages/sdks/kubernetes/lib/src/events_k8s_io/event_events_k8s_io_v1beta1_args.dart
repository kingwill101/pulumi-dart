// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/event_source.dart';
import '../core/object_reference.dart';
import '../meta/object_meta.dart';
import 'event_series_events_k8s_io_v1beta1.dart';

/// {@template pulumi_events_k8s_io_v1beta1_event_events_k8s_io_v1beta1_args_doc}
/// The set of arguments for Event.
/// {@endtemplate}
/// {@macro pulumi_events_k8s_io_v1beta1_event_events_k8s_io_v1beta1_args_doc}
class EventEventsK8sIoV1beta1Args {
  /// What action was taken/failed regarding to the regarding object.
  final pulumi.Input<String>? action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  final pulumi.Input<int>? deprecatedCount;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  final pulumi.Input<String>? deprecatedFirstTimestamp;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  final pulumi.Input<String>? deprecatedLastTimestamp;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  final pulumi.Input<EventSource>? deprecatedSource;
  /// Required. Time when this Event was first observed.
  final pulumi.Input<String> eventTime;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMeta>? metadata;
  /// Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  final pulumi.Input<String>? note;
  /// Why the action was taken.
  final pulumi.Input<String>? reason;
  /// The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  final pulumi.Input<ObjectReference>? regarding;
  /// Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  final pulumi.Input<ObjectReference>? related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  final pulumi.Input<String>? reportingController;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  final pulumi.Input<String>? reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  final pulumi.Input<EventSeriesEventsK8sIoV1beta1>? series;
  /// Type of this event (Normal, Warning), new types could be added in the future.
  final pulumi.Input<String>? type;

  /// Creates a new [EventEventsK8sIoV1beta1Args].
  /// [action] What action was taken/failed regarding to the regarding object.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [deprecatedCount] Deprecated field assuring backward compatibility with core.v1 Event type
  /// [deprecatedFirstTimestamp] Deprecated field assuring backward compatibility with core.v1 Event type
  /// [deprecatedLastTimestamp] Deprecated field assuring backward compatibility with core.v1 Event type
  /// [deprecatedSource] Deprecated field assuring backward compatibility with core.v1 Event type
  /// [eventTime] Required. Time when this Event was first observed.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [note] Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  /// [reason] Why the action was taken.
  /// [regarding] The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  /// [related] Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  /// [reportingController] Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  /// [reportingInstance] ID of the controller instance, e.g. `kubelet-xyzf`.
  /// [series] Data about the Event series this event represents or nil if it's a singleton Event.
  /// [type] Type of this event (Normal, Warning), new types could be added in the future.
  EventEventsK8sIoV1beta1Args({
    pulumi.Output<String>? action,
    pulumi.Output<String>? apiVersion,
    pulumi.Output<int>? deprecatedCount,
    pulumi.Output<String>? deprecatedFirstTimestamp,
    pulumi.Output<String>? deprecatedLastTimestamp,
    pulumi.Output<EventSource>? deprecatedSource,
    required pulumi.Output<String> eventTime,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<String>? note,
    pulumi.Output<String>? reason,
    pulumi.Output<ObjectReference>? regarding,
    pulumi.Output<ObjectReference>? related,
    pulumi.Output<String>? reportingController,
    pulumi.Output<String>? reportingInstance,
    pulumi.Output<EventSeriesEventsK8sIoV1beta1>? series,
    pulumi.Output<String>? type,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      deprecatedCount = pulumi.Input.asOptionalInput<int>(deprecatedCount),
      deprecatedFirstTimestamp = pulumi.Input.asOptionalInput<String>(deprecatedFirstTimestamp),
      deprecatedLastTimestamp = pulumi.Input.asOptionalInput<String>(deprecatedLastTimestamp),
      deprecatedSource = pulumi.Input.asOptionalInput<EventSource>(deprecatedSource),
      eventTime = pulumi.Input.asInput<String>(eventTime),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      note = pulumi.Input.asOptionalInput<String>(note),
      reason = pulumi.Input.asOptionalInput<String>(reason),
      regarding = pulumi.Input.asOptionalInput<ObjectReference>(regarding),
      related = pulumi.Input.asOptionalInput<ObjectReference>(related),
      reportingController = pulumi.Input.asOptionalInput<String>(reportingController),
      reportingInstance = pulumi.Input.asOptionalInput<String>(reportingInstance),
      series = pulumi.Input.asOptionalInput<EventSeriesEventsK8sIoV1beta1>(series),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'apiVersion': ?apiVersion,
      'deprecatedCount': ?deprecatedCount,
      'deprecatedFirstTimestamp': ?deprecatedFirstTimestamp,
      'deprecatedLastTimestamp': ?deprecatedLastTimestamp,
      'deprecatedSource': ?pulumi.Input.mapOptionalInputValue<EventSource, Map<String, dynamic>>(deprecatedSource, (value) => value.toMap()),
      'eventTime': eventTime,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'note': ?note,
      'reason': ?reason,
      'regarding': ?pulumi.Input.mapOptionalInputValue<ObjectReference, Map<String, dynamic>>(regarding, (value) => value.toMap()),
      'related': ?pulumi.Input.mapOptionalInputValue<ObjectReference, Map<String, dynamic>>(related, (value) => value.toMap()),
      'reportingController': ?reportingController,
      'reportingInstance': ?reportingInstance,
      'series': ?pulumi.Input.mapOptionalInputValue<EventSeriesEventsK8sIoV1beta1, Map<String, dynamic>>(series, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory EventEventsK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EventEventsK8sIoV1beta1Args(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      deprecatedCount: map['deprecatedCount'] == null ? null : pulumi.Output.create<int>(map['deprecatedCount'] as int),
      deprecatedFirstTimestamp: map['deprecatedFirstTimestamp'] == null ? null : pulumi.Output.create<String>(map['deprecatedFirstTimestamp'] as String),
      deprecatedLastTimestamp: map['deprecatedLastTimestamp'] == null ? null : pulumi.Output.create<String>(map['deprecatedLastTimestamp'] as String),
      deprecatedSource: map['deprecatedSource'] == null ? null : pulumi.Output.create<EventSource>(EventSource.fromMap((map['deprecatedSource'] as Map).cast<String, dynamic>())),
      eventTime: pulumi.Output.create<String>(map['eventTime'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      note: map['note'] == null ? null : pulumi.Output.create<String>(map['note'] as String),
      reason: map['reason'] == null ? null : pulumi.Output.create<String>(map['reason'] as String),
      regarding: map['regarding'] == null ? null : pulumi.Output.create<ObjectReference>(ObjectReference.fromMap((map['regarding'] as Map).cast<String, dynamic>())),
      related: map['related'] == null ? null : pulumi.Output.create<ObjectReference>(ObjectReference.fromMap((map['related'] as Map).cast<String, dynamic>())),
      reportingController: map['reportingController'] == null ? null : pulumi.Output.create<String>(map['reportingController'] as String),
      reportingInstance: map['reportingInstance'] == null ? null : pulumi.Output.create<String>(map['reportingInstance'] as String),
      series: map['series'] == null ? null : pulumi.Output.create<EventSeriesEventsK8sIoV1beta1>(EventSeriesEventsK8sIoV1beta1.fromMap((map['series'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

