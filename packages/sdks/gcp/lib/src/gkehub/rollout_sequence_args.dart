// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_sequence_auto_upgrade_config.dart';
import 'rollout_sequence_ignored_clusters_selector.dart';
import 'rollout_sequence_stage.dart';

/// {@template pulumi_gkehub_rollout_sequence_rollout_sequence_args_doc}
/// The set of arguments for RolloutSequence.
/// {@endtemplate}
/// {@macro pulumi_gkehub_rollout_sequence_rollout_sequence_args_doc}
class RolloutSequenceArgs {
  /// Configuration for automatic upgrades.
  /// If not specified, the system applies default behavior.
  /// Structure is documented below.
  final pulumi.Input<RolloutSequenceAutoUpgradeConfig>? autoUpgradeConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Human readable display name of the Rollout Sequence.
  final pulumi.Input<String>? displayName;
  /// Selector for clusters to exclude from the Rollout Sequence.
  /// Structure is documented below.
  final pulumi.Input<RolloutSequenceIgnoredClustersSelector>? ignoredClustersSelector;
  /// Labels for this Rollout Sequence.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Minimum control plane version that the clusters in the sequence should be upgraded to.
  /// Setting this field will cause the creation of a rollout to the specified version.
  /// Any rollout of the same type already running on the first stage of the sequence will be cancelled to allow for the creation of the new rollout.
  /// Should be a valid [semantic version](https://semver.org/).
  /// Version aliases are supported, as described in the [cluster version docs](https://docs.cloud.google.com/kubernetes-engine/versioning#specifying_cluster_version).
  /// Note that the `latest` and `-` aliases are not supported for this field.
  /// Supported formats: `1.X`, `1.X.Y`, `1.X.Y-gke.N`.
  final pulumi.Input<String>? minControlPlaneVersion;
  /// Minimum node version that the clusters in the sequence should be upgraded to.
  /// Setting this field will cause the creation of a rollout to the specified version.
  /// Any rollout of the same type already running on the first stage of the sequence will be cancelled to allow for the creation of the new rollout.
  /// Should be a valid [semantic version](https://semver.org/).
  /// Version aliases are supported, as described in the [cluster version docs](https://docs.cloud.google.com/kubernetes-engine/versioning#specifying_cluster_version).
  /// Note that the `latest` and `-` aliases are not supported for this field.
  /// Supported formats: `1.X`, `1.X.Y`, `1.X.Y-gke.N`.
  final pulumi.Input<String>? minNodeVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The user-provided identifier of the RolloutSequence.
  final pulumi.Input<String> rolloutSequenceId;
  /// Ordered list of stages that constitute this Rollout Sequence.
  /// Structure is documented below.
  final pulumi.Input<List<RolloutSequenceStage>> stages;

  /// Creates a new [RolloutSequenceArgs].
  /// [autoUpgradeConfig] Configuration for automatic upgrades.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human readable display name of the Rollout Sequence.
  /// [ignoredClustersSelector] Selector for clusters to exclude from the Rollout Sequence.
  /// [labels] Labels for this Rollout Sequence.
  /// [minControlPlaneVersion] Minimum control plane version that the clusters in the sequence should be upgraded to.
  /// [minNodeVersion] Minimum node version that the clusters in the sequence should be upgraded to.
  /// [project] The ID of the project in which the resource belongs.
  /// [rolloutSequenceId] The user-provided identifier of the RolloutSequence.
  /// [stages] Ordered list of stages that constitute this Rollout Sequence.
  const RolloutSequenceArgs({
    this.autoUpgradeConfig,
    this.deletionPolicy,
    this.displayName,
    this.ignoredClustersSelector,
    this.labels,
    this.minControlPlaneVersion,
    this.minNodeVersion,
    this.project,
    required this.rolloutSequenceId,
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeConfig': ?pulumi.Input.mapOptionalInputValue<RolloutSequenceAutoUpgradeConfig, Map<String, dynamic>>(autoUpgradeConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'ignoredClustersSelector': ?pulumi.Input.mapOptionalInputValue<RolloutSequenceIgnoredClustersSelector, Map<String, dynamic>>(ignoredClustersSelector, (value) => value.toMap()),
      'labels': ?labels,
      'minControlPlaneVersion': ?minControlPlaneVersion,
      'minNodeVersion': ?minNodeVersion,
      'project': ?project,
      'rolloutSequenceId': rolloutSequenceId,
      'stages': pulumi.Input.mapInputValue<List<RolloutSequenceStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<RolloutSequenceStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RolloutSequenceArgs.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceArgs(
      autoUpgradeConfig: (() { final guardedValue = map['autoUpgradeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutSequenceAutoUpgradeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoredClustersSelector: (() { final guardedValue = map['ignoredClustersSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutSequenceIgnoredClustersSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      minControlPlaneVersion: (() { final guardedValue = map['minControlPlaneVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minNodeVersion: (() { final guardedValue = map['minNodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutSequenceId: pulumi.Input.fromValue(map['rolloutSequenceId'] as String),
      stages: pulumi.Input.fromValue(pulumi.Input.decodeList<RolloutSequenceStage>(map['stages']!, (value) => RolloutSequenceStage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
