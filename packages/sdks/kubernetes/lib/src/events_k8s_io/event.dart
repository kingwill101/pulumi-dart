// ignore_for_file: unused_element, unnecessary_cast

import '../core/event_source.dart';
import '../core/object_reference.dart';
import '../meta/object_meta.dart';
import 'event_series.dart';

/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system. Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class Event {
  /// action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  final String? action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
  final int? deprecatedCount;
  /// deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  final String? deprecatedFirstTimestamp;
  /// deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  final String? deprecatedLastTimestamp;
  /// deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
  final EventSource? deprecatedSource;
  /// eventTime is the time when this Event was first observed. It is required.
  final String eventTime;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;
  /// note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  final String? note;
  /// reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  final String? reason;
  /// regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  final ObjectReference? regarding;
  /// related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  final ObjectReference? related;
  /// reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
  final String? reportingController;
  /// reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
  final String? reportingInstance;
  /// series is data about the Event series this event represents or nil if it's a singleton Event.
  final EventSeries? series;
  /// type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
  final String? type;

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
      'deprecatedSource': ?deprecatedSource == null ? null : deprecatedSource!.toMap(),
      'eventTime': eventTime,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'note': ?note,
      'reason': ?reason,
      'regarding': ?regarding == null ? null : regarding!.toMap(),
      'related': ?related == null ? null : related!.toMap(),
      'reportingController': ?reportingController,
      'reportingInstance': ?reportingInstance,
      'series': ?series == null ? null : series!.toMap(),
      'type': ?type,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      action: map['action'] == null ? null : map['action'] as String,
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      deprecatedCount: map['deprecatedCount'] == null ? null : map['deprecatedCount'] as int,
      deprecatedFirstTimestamp: map['deprecatedFirstTimestamp'] == null ? null : map['deprecatedFirstTimestamp'] as String,
      deprecatedLastTimestamp: map['deprecatedLastTimestamp'] == null ? null : map['deprecatedLastTimestamp'] as String,
      deprecatedSource: map['deprecatedSource'] == null ? null : EventSource.fromMap((map['deprecatedSource'] as Map).cast<String, dynamic>()),
      eventTime: map['eventTime'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      note: map['note'] == null ? null : map['note'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      regarding: map['regarding'] == null ? null : ObjectReference.fromMap((map['regarding'] as Map).cast<String, dynamic>()),
      related: map['related'] == null ? null : ObjectReference.fromMap((map['related'] as Map).cast<String, dynamic>()),
      reportingController: map['reportingController'] == null ? null : map['reportingController'] as String,
      reportingInstance: map['reportingInstance'] == null ? null : map['reportingInstance'] as String,
      series: map['series'] == null ? null : EventSeries.fromMap((map['series'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

