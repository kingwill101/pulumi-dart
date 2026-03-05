import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/event_source_patch.dart';
import '../core/object_reference_patch.dart';
import '../meta/object_meta_patch.dart';
import 'event_patch_args.dart';
import 'event_series_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system. Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class EventPatchEventsK8sIoV1 extends pulumi.CustomResource {
  /// action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  late final pulumi.Output<String?> action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
  late final pulumi.Output<int?> deprecatedCount;
  /// deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  late final pulumi.Output<String?> deprecatedFirstTimestamp;
  /// deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  late final pulumi.Output<String?> deprecatedLastTimestamp;
  /// deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
  late final pulumi.Output<EventSourcePatch?> deprecatedSource;
  /// eventTime is the time when this Event was first observed. It is required.
  late final pulumi.Output<String?> eventTime;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  late final pulumi.Output<String?> note;
  /// reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  late final pulumi.Output<String?> reason;
  /// regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  late final pulumi.Output<ObjectReferencePatch?> regarding;
  /// related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  late final pulumi.Output<ObjectReferencePatch?> related;
  /// reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
  late final pulumi.Output<String?> reportingController;
  /// reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
  late final pulumi.Output<String?> reportingInstance;
  /// series is data about the Event series this event represents or nil if it's a singleton Event.
  late final pulumi.Output<EventSeriesPatch?> series;
  /// type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
  late final pulumi.Output<String?> type;

  /// Creates a new [EventPatchEventsK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventPatchEventsK8sIoV1]. {@macro pulumi_events_k8s_io_v1_event_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventPatchEventsK8sIoV1(
    String name, {
    EventPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:events.k8s.io/v1:EventPatch',
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
    series = registerOutput<EventSeriesPatch?>('series', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSeriesPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String?>('type');
  }
}
