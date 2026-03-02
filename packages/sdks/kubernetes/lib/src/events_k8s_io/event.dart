// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/event_source.dart';
import '../core/object_reference.dart';
import '../meta/object_meta.dart';
import 'event_series.dart';

/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system. Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class Event {
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

  /// Creates a new [Event].
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
  Event({
    this.action,
    this.apiVersion,
    this.deprecatedCount,
    this.deprecatedFirstTimestamp,
    this.deprecatedLastTimestamp,
    this.deprecatedSource,
    required this.eventTime,
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

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      deprecatedCount: map['deprecatedCount'] == null ? null : (map['deprecatedCount']! as int).input(),
      deprecatedFirstTimestamp: map['deprecatedFirstTimestamp'] == null ? null : (map['deprecatedFirstTimestamp']! as String).input(),
      deprecatedLastTimestamp: map['deprecatedLastTimestamp'] == null ? null : (map['deprecatedLastTimestamp']! as String).input(),
      deprecatedSource: map['deprecatedSource'] == null ? null : (EventSource.fromMap((map['deprecatedSource']! as Map).cast<String, dynamic>())).input(),
      eventTime: (map['eventTime'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      note: map['note'] == null ? null : (map['note']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
      regarding: map['regarding'] == null ? null : (ObjectReference.fromMap((map['regarding']! as Map).cast<String, dynamic>())).input(),
      related: map['related'] == null ? null : (ObjectReference.fromMap((map['related']! as Map).cast<String, dynamic>())).input(),
      reportingController: map['reportingController'] == null ? null : (map['reportingController']! as String).input(),
      reportingInstance: map['reportingInstance'] == null ? null : (map['reportingInstance']! as String).input(),
      series: map['series'] == null ? null : (EventSeries.fromMap((map['series']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

