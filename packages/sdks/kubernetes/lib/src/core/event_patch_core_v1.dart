import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'event_patch_args.dart';
import 'event_series_patch.dart';
import 'event_source_patch.dart';
import 'object_reference_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// Event is a report of an event somewhere in the cluster.  Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class EventPatchCoreV1 extends pulumi.CustomResource {
  /// What action was taken/failed regarding to the Regarding object.
  late final pulumi.Output<String?> action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// The number of times this event has occurred.
  late final pulumi.Output<int?> count;
  /// Time when this Event was first observed.
  late final pulumi.Output<String?> eventTime;
  /// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
  late final pulumi.Output<String?> firstTimestamp;
  /// The object that this event is about.
  late final pulumi.Output<ObjectReferencePatch?> involvedObject;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// The time at which the most recent occurrence of this event was recorded.
  late final pulumi.Output<String?> lastTimestamp;
  /// A human-readable description of the status of this operation.
  late final pulumi.Output<String?> message;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  late final pulumi.Output<String?> reason;
  /// Optional secondary object for more complex actions.
  late final pulumi.Output<ObjectReferencePatch?> related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  late final pulumi.Output<String?> reportingComponent;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  late final pulumi.Output<String?> reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  late final pulumi.Output<EventSeriesPatch?> series;
  /// The component reporting this event. Should be a short machine understandable string.
  late final pulumi.Output<EventSourcePatch?> source;
  /// Type of this event (Normal, Warning), new types could be added in the future
  late final pulumi.Output<String?> type;

  /// Creates a new [EventPatchCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventPatchCoreV1]. {@macro pulumi_core_v1_event_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventPatchCoreV1(
    String name, {
    EventPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:EventPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String?>('action');
    apiVersion = registerOutput<String?>('apiVersion');
    count = registerOutput<int?>('count');
    eventTime = registerOutput<String?>('eventTime');
    firstTimestamp = registerOutput<String?>('firstTimestamp');
    involvedObject = registerOutput<ObjectReferencePatch?>('involvedObject', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    lastTimestamp = registerOutput<String?>('lastTimestamp');
    message = registerOutput<String?>('message');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reason = registerOutput<String?>('reason');
    related = registerOutput<ObjectReferencePatch?>('related', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reportingComponent = registerOutput<String?>('reportingComponent');
    reportingInstance = registerOutput<String?>('reportingInstance');
    series = registerOutput<EventSeriesPatch?>('series', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSeriesPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<EventSourcePatch?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String?>('type');
  }
}
