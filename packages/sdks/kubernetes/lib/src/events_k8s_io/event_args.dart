// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/event_source.dart';
import '../core/object_reference.dart';
import '../meta/object_meta.dart';
import 'event_series.dart';

/// {@template pulumi_events_k8s_io_v1_event_args_doc}
/// The set of arguments for Event.
/// {@endtemplate}
/// {@macro pulumi_events_k8s_io_v1_event_args_doc}
class EventArgs {
  /// action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  final pulumi.Input<String>? action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
  final pulumi.Input<int>? deprecatedCount;
  /// deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  final pulumi.Input<String>? deprecatedFirstTimestamp;
  /// deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  final pulumi.Input<String>? deprecatedLastTimestamp;
  /// deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
  final pulumi.Input<EventSource>? deprecatedSource;
  /// eventTime is the time when this Event was first observed. It is required.
  final pulumi.Input<String> eventTime;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  final pulumi.Input<String>? note;
  /// reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  final pulumi.Input<String>? reason;
  /// regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  final pulumi.Input<ObjectReference>? regarding;
  /// related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  final pulumi.Input<ObjectReference>? related;
  /// reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
  final pulumi.Input<String>? reportingController;
  /// reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
  final pulumi.Input<String>? reportingInstance;
  /// series is data about the Event series this event represents or nil if it's a singleton Event.
  final pulumi.Input<EventSeries>? series;
  /// type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
  final pulumi.Input<String>? type;

  /// Creates a new [EventArgs].
  /// [action] action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [deprecatedCount] deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
  /// [deprecatedFirstTimestamp] deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  /// [deprecatedLastTimestamp] deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  /// [deprecatedSource] deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
  /// [eventTime] eventTime is the time when this Event was first observed. It is required.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [note] note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  /// [reason] reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  /// [regarding] regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  /// [related] related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  /// [reportingController] reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
  /// [reportingInstance] reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
  /// [series] series is data about the Event series this event represents or nil if it's a singleton Event.
  /// [type] type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
  EventArgs({
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
    pulumi.Output<EventSeries>? series,
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
      series = pulumi.Input.asOptionalInput<EventSeries>(series),
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
      'series': ?pulumi.Input.mapOptionalInputValue<EventSeries, Map<String, dynamic>>(series, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory EventArgs.fromMap(Map<String, dynamic> map) {
    return EventArgs(
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
      series: map['series'] == null ? null : pulumi.Output.create<EventSeries>(EventSeries.fromMap((map['series'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

