// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_sequence_auto_upgrade_config.dart';
import 'rollout_sequence_ignored_clusters_selector.dart';
import 'rollout_sequence_operational_state.dart';
import 'rollout_sequence_stage.dart';

/// Input properties used for looking up and filtering RolloutSequence resources.
class RolloutSequenceState {
  /// Configuration for automatic upgrades.
  /// If not specified, the system applies default behavior.
  /// Structure is documented below.
  final pulumi.Input<RolloutSequenceAutoUpgradeConfig>? autoUpgradeConfig;
  /// The timestamp at which the Rollout Sequence was created.
  final pulumi.Input<String>? createTime;
  /// The timestamp at the Rollout Sequence was deleted.
  final pulumi.Input<String>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Human readable display name of the Rollout Sequence.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// etag of the Rollout Sequence.
  final pulumi.Input<String>? etag;
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
  /// The full resource name of the RolloutSequence.
  final pulumi.Input<String>? name;
  /// The operational state of the rollout sequence.
  /// Structure is documented below.
  final pulumi.Input<List<RolloutSequenceOperationalState>>? operationalStates;
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
  /// The current target control plane version.
  final pulumi.Input<String>? targetControlPlaneVersion;
  /// The current target node version.
  final pulumi.Input<String>? targetNodeVersion;
  /// Google-generated UUID for this resource.
  final pulumi.Input<String>? uid;
  /// The timestamp at which the Rollout Sequence was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RolloutSequenceState].
  /// [autoUpgradeConfig] Configuration for automatic upgrades.
  /// [createTime] The timestamp at which the Rollout Sequence was created.
  /// [deleteTime] The timestamp at the Rollout Sequence was deleted.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human readable display name of the Rollout Sequence.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] etag of the Rollout Sequence.
  /// [ignoredClustersSelector] Selector for clusters to exclude from the Rollout Sequence.
  /// [labels] Labels for this Rollout Sequence.
  /// [minControlPlaneVersion] Minimum control plane version that the clusters in the sequence should be upgraded to.
  /// [minNodeVersion] Minimum node version that the clusters in the sequence should be upgraded to.
  /// [name] The full resource name of the RolloutSequence.
  /// [operationalStates] The operational state of the rollout sequence.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rolloutSequenceId] The user-provided identifier of the RolloutSequence.
  /// [stages] Ordered list of stages that constitute this Rollout Sequence.
  /// [targetControlPlaneVersion] The current target control plane version.
  /// [targetNodeVersion] The current target node version.
  /// [uid] Google-generated UUID for this resource.
  /// [updateTime] The timestamp at which the Rollout Sequence was last updated.
  const RolloutSequenceState({
    this.autoUpgradeConfig,
    this.createTime,
    this.deleteTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.etag,
    this.ignoredClustersSelector,
    this.labels,
    this.minControlPlaneVersion,
    this.minNodeVersion,
    this.name,
    this.operationalStates,
    this.project,
    this.pulumiLabels,
    this.rolloutSequenceId,
    this.stages,
    this.targetControlPlaneVersion,
    this.targetNodeVersion,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeConfig': ?pulumi.Input.mapOptionalInputValue<RolloutSequenceAutoUpgradeConfig, Map<String, dynamic>>(autoUpgradeConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'ignoredClustersSelector': ?pulumi.Input.mapOptionalInputValue<RolloutSequenceIgnoredClustersSelector, Map<String, dynamic>>(ignoredClustersSelector, (value) => value.toMap()),
      'labels': ?labels,
      'minControlPlaneVersion': ?minControlPlaneVersion,
      'minNodeVersion': ?minNodeVersion,
      'name': ?name,
      'operationalStates': ?pulumi.Input.mapOptionalInputValue<List<RolloutSequenceOperationalState>, List<Map<String, dynamic>>>(operationalStates, (value) => pulumi.Input.encodeList<RolloutSequenceOperationalState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rolloutSequenceId': ?rolloutSequenceId,
      'stages': ?pulumi.Input.mapOptionalInputValue<List<RolloutSequenceStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<RolloutSequenceStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetControlPlaneVersion': ?targetControlPlaneVersion,
      'targetNodeVersion': ?targetNodeVersion,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory RolloutSequenceState.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceState(
      autoUpgradeConfig: (() { final guardedValue = map['autoUpgradeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutSequenceAutoUpgradeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoredClustersSelector: (() { final guardedValue = map['ignoredClustersSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutSequenceIgnoredClustersSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      minControlPlaneVersion: (() { final guardedValue = map['minControlPlaneVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minNodeVersion: (() { final guardedValue = map['minNodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationalStates: (() { final guardedValue = map['operationalStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RolloutSequenceOperationalState>(guardedValue, (value) => RolloutSequenceOperationalState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      rolloutSequenceId: (() { final guardedValue = map['rolloutSequenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RolloutSequenceStage>(guardedValue, (value) => RolloutSequenceStage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetControlPlaneVersion: (() { final guardedValue = map['targetControlPlaneVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNodeVersion: (() { final guardedValue = map['targetNodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
