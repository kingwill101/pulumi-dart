// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_sequence_stage_cluster_selector.dart';

class RolloutSequenceStage {
  /// Filter to select a subset of clusters from the specified Fleet projects.
  /// If not specified, all clusters in the fleet projects are selected.
  /// Structure is documented below.
  final pulumi.Input<RolloutSequenceStageClusterSelector>? clusterSelector;
  /// List of Fleet projects to select the clusters from.
  /// Expected format: projects/{project}
  final pulumi.Input<List<String>> fleetProjects;
  /// Soak time after upgrading all the clusters in the stage, specified in seconds.
  final pulumi.Input<String>? soakDuration;

  /// Creates a new [RolloutSequenceStage].
  /// [clusterSelector] Filter to select a subset of clusters from the specified Fleet projects.
  /// [fleetProjects] List of Fleet projects to select the clusters from.
  /// [soakDuration] Soak time after upgrading all the clusters in the stage, specified in seconds.
  RolloutSequenceStage({
    this.clusterSelector,
    required this.fleetProjects,
    this.soakDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelector': ?pulumi.Input.mapOptionalInputValue<RolloutSequenceStageClusterSelector, Map<String, dynamic>>(clusterSelector, (value) => value.toMap()),
      'fleetProjects': fleetProjects,
      'soakDuration': ?soakDuration,
    };
  }

  factory RolloutSequenceStage.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceStage(
      clusterSelector: map['clusterSelector'] == null ? null : (RolloutSequenceStageClusterSelector.fromMap((map['clusterSelector'] as Map).cast<String, dynamic>())).input(),
      fleetProjects: ((map['fleetProjects'] as List).cast<String>()).input(),
      soakDuration: map['soakDuration'] == null ? null : (map['soakDuration'] as String).input(),
    );
  }
}

