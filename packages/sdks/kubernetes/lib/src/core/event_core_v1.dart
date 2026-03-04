import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'event_args.dart';
import 'event_series.dart';
import 'event_source.dart';
import 'object_reference.dart';

/// Event is a report of an event somewhere in the cluster.  Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class EventCoreV1 extends pulumi.CustomResource {
  /// What action was taken/failed regarding to the Regarding object.
  late final pulumi.Output<String> action;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// The number of times this event has occurred.
  late final pulumi.Output<int> count;

  /// Time when this Event was first observed.
  late final pulumi.Output<String> eventTime;

  /// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
  late final pulumi.Output<String> firstTimestamp;

  /// The object that this event is about.
  late final pulumi.Output<ObjectReference> involvedObject;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// The time at which the most recent occurrence of this event was recorded.
  late final pulumi.Output<String> lastTimestamp;

  /// A human-readable description of the status of this operation.
  late final pulumi.Output<String> message;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  late final pulumi.Output<String> reason;

  /// Optional secondary object for more complex actions.
  late final pulumi.Output<ObjectReference> related;

  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  late final pulumi.Output<String> reportingComponent;

  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  late final pulumi.Output<String> reportingInstance;

  /// Data about the Event series this event represents or nil if it's a singleton Event.
  late final pulumi.Output<EventSeries> series;

  /// The component reporting this event. Should be a short machine understandable string.
  late final pulumi.Output<EventSource> source;

  /// Type of this event (Normal, Warning), new types could be added in the future
  late final pulumi.Output<String> type;

  /// Creates a new [EventCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventCoreV1]. {@macro pulumi_core_v1_event_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventCoreV1(
    String name, {
    EventArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:core/v1:Event',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    apiVersion = registerOutput<String>('apiVersion');
    count = registerOutput<int>('count');
    eventTime = registerOutput<String>('eventTime');
    firstTimestamp = registerOutput<String>('firstTimestamp');
    involvedObject = registerOutput<ObjectReference>('involvedObject');
    kind = registerOutput<String>('kind');
    lastTimestamp = registerOutput<String>('lastTimestamp');
    message = registerOutput<String>('message');
    metadata = registerOutput<ObjectMeta>('metadata');
    reason = registerOutput<String>('reason');
    related = registerOutput<ObjectReference>('related');
    reportingComponent = registerOutput<String>('reportingComponent');
    reportingInstance = registerOutput<String>('reportingInstance');
    series = registerOutput<EventSeries>('series');
    source = registerOutput<EventSource>('source');
    type = registerOutput<String>('type');
  }
}
