// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_sequence_stage.dart';

/// Input properties used for looking up and filtering RolloutSequence resources.
class RolloutSequenceState {
  /// The timestamp at which the Rollout Sequence was created.
  final pulumi.Input<String>? createTime;
  /// The timestamp at the Rollout Sequence was deleted.
  final pulumi.Input<String>? deleteTime;
  /// Human readable display name of the Rollout Sequence.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// etag of the Rollout Sequence.
  final pulumi.Input<String>? etag;
  /// Labels for this Rollout Sequence.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The full resource name of the RolloutSequence.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The user-provided identifier of the RolloutSequence.
  final pulumi.Input<String>? rolloutSequenceId;
  /// Ordered list of stages that constitute this Rollout Sequence.
  /// Structure is documented below.
  final pulumi.Input<List<RolloutSequenceStage>>? stages;
  /// Google-generated UUID for this resource.
  final pulumi.Input<String>? uid;
  /// The timestamp at which the Rollout Sequence was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RolloutSequenceState].
  /// [createTime] The timestamp at which the Rollout Sequence was created.
  /// [deleteTime] The timestamp at the Rollout Sequence was deleted.
  /// [displayName] Human readable display name of the Rollout Sequence.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] etag of the Rollout Sequence.
  /// [labels] Labels for this Rollout Sequence.
  /// [name] The full resource name of the RolloutSequence.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rolloutSequenceId] The user-provided identifier of the RolloutSequence.
  /// [stages] Ordered list of stages that constitute this Rollout Sequence.
  /// [uid] Google-generated UUID for this resource.
  /// [updateTime] The timestamp at which the Rollout Sequence was last updated.
  RolloutSequenceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? rolloutSequenceId,
    pulumi.Output<List<RolloutSequenceStage>>? stages,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      rolloutSequenceId = pulumi.Input.asOptionalInput<String>(rolloutSequenceId),
      stages = pulumi.Input.asOptionalInput<List<RolloutSequenceStage>>(stages),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rolloutSequenceId': ?rolloutSequenceId,
      'stages': ?pulumi.Input.mapOptionalInputValue<List<RolloutSequenceStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<RolloutSequenceStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory RolloutSequenceState.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      rolloutSequenceId: map['rolloutSequenceId'] == null ? null : pulumi.Output.create<String>(map['rolloutSequenceId'] as String),
      stages: map['stages'] == null ? null : pulumi.Output.create<List<RolloutSequenceStage>>(pulumi.Input.decodeList<RolloutSequenceStage>(map['stages'], (value) => RolloutSequenceStage.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

