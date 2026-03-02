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
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.rolloutSequenceId,
    this.stages,
    this.uid,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      rolloutSequenceId: map['rolloutSequenceId'] == null ? null : (map['rolloutSequenceId'] as String).input(),
      stages: map['stages'] == null ? null : (pulumi.Input.decodeList<RolloutSequenceStage>(map['stages'], (value) => RolloutSequenceStage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

