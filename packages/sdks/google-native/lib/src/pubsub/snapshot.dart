import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';

/// Creates a snapshot from the requested subscription. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. If the snapshot already exists, returns `ALREADY_EXISTS`. If the requested subscription doesn't exist, returns `NOT_FOUND`. If the backlog in the subscription is too old -- and the resulting snapshot would expire in less than 1 hour -- then `FAILED_PRECONDITION` is returned. See also the `Snapshot.expire_time` field. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription, conforming to the [resource name format] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). The generated name is populated in the returned Snapshot object. Note that for REST API requests, you must specify a name in the request.
/// Auto-naming is currently not supported for this resource.
class Snapshot extends pulumi.CustomResource {
  /// Optional. The snapshot is guaranteed to exist up until this time. A newly-created snapshot expires no later than 7 days from the time of its creation. Its exact lifetime is determined at creation by the existing backlog in the source subscription. Specifically, the lifetime of the snapshot is `7 days - (age of oldest unacked message in the subscription)`. For example, consider a subscription whose oldest unacked message is 3 days old. If a snapshot is created from this subscription, the snapshot -- which will always capture this 3-day-old backlog as long as the snapshot exists -- will expire in 4 days. The service will refuse to create a snapshot that would expire in less than 1 hour after creation.
  late final pulumi.Output<String> expireTime;
  /// Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).
  late final pulumi.Output<Map<String, String>> labels;
  /// Optional. The name of the snapshot.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> snapshotId;
  /// Optional. The name of the topic from which this snapshot is retaining messages.
  late final pulumi.Output<String> topic;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_pubsub_v1_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.expireTime = registerOutput<String>('expireTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.topic = registerOutput<String>('topic');
  }
}
