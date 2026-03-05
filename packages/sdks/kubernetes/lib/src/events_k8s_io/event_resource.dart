import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/event_source.dart';
import '../core/object_reference.dart';
import '../meta/object_meta.dart';
import 'event_events_k8s_io_v1beta1_args.dart';
import 'event_series_events_k8s_io_v1beta1.dart';

/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
class EventResource extends pulumi.CustomResource {
  /// What action was taken/failed regarding to the regarding object.
  late final pulumi.Output<String> action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  late final pulumi.Output<int> deprecatedCount;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  late final pulumi.Output<String> deprecatedFirstTimestamp;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  late final pulumi.Output<String> deprecatedLastTimestamp;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  late final pulumi.Output<EventSource> deprecatedSource;
  /// Required. Time when this Event was first observed.
  late final pulumi.Output<String> eventTime;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ObjectMeta> metadata;
  /// Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  late final pulumi.Output<String> note;
  /// Why the action was taken.
  late final pulumi.Output<String> reason;
  /// The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  late final pulumi.Output<ObjectReference> regarding;
  /// Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  late final pulumi.Output<ObjectReference> related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  late final pulumi.Output<String> reportingController;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  late final pulumi.Output<String> reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  late final pulumi.Output<EventSeriesEventsK8sIoV1beta1> series;
  /// Type of this event (Normal, Warning), new types could be added in the future.
  late final pulumi.Output<String> type;

  /// Creates a new [EventResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventResource]. {@macro pulumi_events_k8s_io_v1beta1_event_events_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventResource(
    String name, {
    EventEventsK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:events.k8s.io/v1beta1:Event',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    apiVersion = registerOutput<String>('apiVersion');
    deprecatedCount = registerOutput<int>('deprecatedCount');
    deprecatedFirstTimestamp = registerOutput<String>('deprecatedFirstTimestamp');
    deprecatedLastTimestamp = registerOutput<String>('deprecatedLastTimestamp');
    deprecatedSource = registerOutput<EventSource>('deprecatedSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventTime = registerOutput<String>('eventTime');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    note = registerOutput<String>('note');
    reason = registerOutput<String>('reason');
    regarding = registerOutput<ObjectReference>('regarding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    related = registerOutput<ObjectReference>('related', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reportingController = registerOutput<String>('reportingController');
    reportingInstance = registerOutput<String>('reportingInstance');
    series = registerOutput<EventSeriesEventsK8sIoV1beta1>('series', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSeriesEventsK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
