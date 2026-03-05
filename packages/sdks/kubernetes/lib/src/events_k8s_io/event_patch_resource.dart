import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/event_source_patch.dart';
import '../core/object_reference_patch.dart';
import '../meta/object_meta_patch.dart';
import 'event_patch_events_k8s_io_v1beta1_args.dart';
import 'event_series_patch_events_k8s_io_v1beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
class EventPatchResource extends pulumi.CustomResource {
  /// What action was taken/failed regarding to the regarding object.
  late final pulumi.Output<String?> action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  late final pulumi.Output<int?> deprecatedCount;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  late final pulumi.Output<String?> deprecatedFirstTimestamp;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  late final pulumi.Output<String?> deprecatedLastTimestamp;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  late final pulumi.Output<EventSourcePatch?> deprecatedSource;
  /// Required. Time when this Event was first observed.
  late final pulumi.Output<String?> eventTime;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  late final pulumi.Output<String?> note;
  /// Why the action was taken.
  late final pulumi.Output<String?> reason;
  /// The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  late final pulumi.Output<ObjectReferencePatch?> regarding;
  /// Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  late final pulumi.Output<ObjectReferencePatch?> related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  late final pulumi.Output<String?> reportingController;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  late final pulumi.Output<String?> reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  late final pulumi.Output<EventSeriesPatchEventsK8sIoV1beta1?> series;
  /// Type of this event (Normal, Warning), new types could be added in the future.
  late final pulumi.Output<String?> type;

  /// Creates a new [EventPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventPatchResource]. {@macro pulumi_events_k8s_io_v1beta1_event_patch_events_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventPatchResource(
    String name, {
    EventPatchEventsK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:events.k8s.io/v1beta1:EventPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String?>('action');
    apiVersion = registerOutput<String?>('apiVersion');
    deprecatedCount = registerOutput<int?>('deprecatedCount');
    deprecatedFirstTimestamp = registerOutput<String?>('deprecatedFirstTimestamp');
    deprecatedLastTimestamp = registerOutput<String?>('deprecatedLastTimestamp');
    deprecatedSource = registerOutput<EventSourcePatch?>('deprecatedSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventTime = registerOutput<String?>('eventTime');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    note = registerOutput<String?>('note');
    reason = registerOutput<String?>('reason');
    regarding = registerOutput<ObjectReferencePatch?>('regarding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    related = registerOutput<ObjectReferencePatch?>('related', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reportingController = registerOutput<String?>('reportingController');
    reportingInstance = registerOutput<String?>('reportingInstance');
    series = registerOutput<EventSeriesPatchEventsK8sIoV1beta1?>('series', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSeriesPatchEventsK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String?>('type');
  }
}
