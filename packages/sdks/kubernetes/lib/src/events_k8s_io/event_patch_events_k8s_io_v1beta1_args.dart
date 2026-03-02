// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/event_source_patch.dart';
import '../core/object_reference_patch.dart';
import '../meta/object_meta_patch.dart';
import 'event_series_patch_events_k8s_io_v1beta1.dart';

/// {@template pulumi_events_k8s_io_v1beta1_event_patch_events_k8s_io_v1beta1_args_doc}
/// The set of arguments for EventPatch.
/// {@endtemplate}
/// {@macro pulumi_events_k8s_io_v1beta1_event_patch_events_k8s_io_v1beta1_args_doc}
class EventPatchEventsK8sIoV1beta1Args {
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
  final pulumi.Input<EventSourcePatch>? deprecatedSource;
  /// Required. Time when this Event was first observed.
  final pulumi.Input<String>? eventTime;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  final pulumi.Input<String>? note;
  /// Why the action was taken.
  final pulumi.Input<String>? reason;
  /// The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  final pulumi.Input<ObjectReferencePatch>? regarding;
  /// Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  final pulumi.Input<ObjectReferencePatch>? related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  final pulumi.Input<String>? reportingController;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  final pulumi.Input<String>? reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  final pulumi.Input<EventSeriesPatchEventsK8sIoV1beta1>? series;
  /// Type of this event (Normal, Warning), new types could be added in the future.
  final pulumi.Input<String>? type;

  /// Creates a new [EventPatchEventsK8sIoV1beta1Args].
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
  EventPatchEventsK8sIoV1beta1Args({
    this.action,
    this.apiVersion,
    this.deprecatedCount,
    this.deprecatedFirstTimestamp,
    this.deprecatedLastTimestamp,
    this.deprecatedSource,
    this.eventTime,
    this.kind,
    this.metadata,
    this.note,
    this.reason,
    this.regarding,
    this.related,
    this.reportingController,
    this.reportingInstance,
    this.series,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'apiVersion': ?apiVersion,
      'deprecatedCount': ?deprecatedCount,
      'deprecatedFirstTimestamp': ?deprecatedFirstTimestamp,
      'deprecatedLastTimestamp': ?deprecatedLastTimestamp,
      'deprecatedSource': ?pulumi.Input.mapOptionalInputValue<EventSourcePatch, Map<String, dynamic>>(deprecatedSource, (value) => value.toMap()),
      'eventTime': ?eventTime,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'note': ?note,
      'reason': ?reason,
      'regarding': ?pulumi.Input.mapOptionalInputValue<ObjectReferencePatch, Map<String, dynamic>>(regarding, (value) => value.toMap()),
      'related': ?pulumi.Input.mapOptionalInputValue<ObjectReferencePatch, Map<String, dynamic>>(related, (value) => value.toMap()),
      'reportingController': ?reportingController,
      'reportingInstance': ?reportingInstance,
      'series': ?pulumi.Input.mapOptionalInputValue<EventSeriesPatchEventsK8sIoV1beta1, Map<String, dynamic>>(series, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory EventPatchEventsK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EventPatchEventsK8sIoV1beta1Args(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      deprecatedCount: map['deprecatedCount'] == null ? null : (map['deprecatedCount'] as int).input(),
      deprecatedFirstTimestamp: map['deprecatedFirstTimestamp'] == null ? null : (map['deprecatedFirstTimestamp'] as String).input(),
      deprecatedLastTimestamp: map['deprecatedLastTimestamp'] == null ? null : (map['deprecatedLastTimestamp'] as String).input(),
      deprecatedSource: map['deprecatedSource'] == null ? null : (EventSourcePatch.fromMap((map['deprecatedSource'] as Map).cast<String, dynamic>())).input(),
      eventTime: map['eventTime'] == null ? null : (map['eventTime'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      note: map['note'] == null ? null : (map['note'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      regarding: map['regarding'] == null ? null : (ObjectReferencePatch.fromMap((map['regarding'] as Map).cast<String, dynamic>())).input(),
      related: map['related'] == null ? null : (ObjectReferencePatch.fromMap((map['related'] as Map).cast<String, dynamic>())).input(),
      reportingController: map['reportingController'] == null ? null : (map['reportingController'] as String).input(),
      reportingInstance: map['reportingInstance'] == null ? null : (map['reportingInstance'] as String).input(),
      series: map['series'] == null ? null : (EventSeriesPatchEventsK8sIoV1beta1.fromMap((map['series'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

