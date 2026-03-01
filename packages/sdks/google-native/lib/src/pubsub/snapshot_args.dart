// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_snapshot_args_doc}
class SnapshotArgs {
  /// Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;
  /// The subscription whose backlog the snapshot retains. Specifically, the created snapshot is guaranteed to retain: (a) The existing backlog on the subscription. More precisely, this is defined as the messages in the subscription's backlog that are unacknowledged upon the successful completion of the `CreateSnapshot` request; as well as: (b) Any messages published to the subscription's topic following the successful completion of the CreateSnapshot request. Format is `projects/{project}/subscriptions/{sub}`.
  final pulumi.Input<String> subscription;

  /// Creates a new [SnapshotArgs].
  /// [labels] Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  /// [project] Optional.
  /// [snapshotId] Required.
  /// [subscription] The subscription whose backlog the snapshot retains. Specifically, the created snapshot is guaranteed to retain: (a) The existing backlog on the subscription. More precisely, this is defined as the messages in the subscription's backlog that are unacknowledged upon the successful completion of the `CreateSnapshot` request; as well as: (b) Any messages published to the subscription's topic following the successful completion of the CreateSnapshot request. Format is `projects/{project}/subscriptions/{sub}`.
  SnapshotArgs({
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? project,
    required pulumi.Output<String> snapshotId,
    required pulumi.Output<String> subscription,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project),
      snapshotId = pulumi.Input.asInput<String>(snapshotId),
      subscription = pulumi.Input.asInput<String>(subscription);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'project': ?project,
      'snapshotId': snapshotId,
      'subscription': subscription,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      snapshotId: pulumi.Output.create<String>(map['snapshotId'] as String),
      subscription: pulumi.Output.create<String>(map['subscription'] as String),
    );
  }
}

