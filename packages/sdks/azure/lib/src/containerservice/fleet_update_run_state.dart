// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_run_managed_cluster_update.dart';
import 'fleet_update_run_stage.dart';

/// Input properties used for looking up and filtering FleetUpdateRun resources.
class FleetUpdateRunState {
  /// The ID of the Fleet Update Strategy. Only one of `fleet_update_strategy_id` or `stage` can be specified.
  final pulumi.Input<String>? fleetUpdateStrategyId;
  /// The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Run to be created.
  final pulumi.Input<String>? kubernetesFleetManagerId;
  /// A `managed_cluster_update` block as defined below.
  final pulumi.Input<FleetUpdateRunManagedClusterUpdate>? managedClusterUpdate;
  /// The name which should be used for this Kubernetes Fleet Update Run. Changing this forces a new Kubernetes Fleet Update Run to be created.
  final pulumi.Input<String>? name;
  /// One or more `stage` blocks as defined below. Only one of `stage` or `fleet_update_strategy_id` can be specified.
  final pulumi.Input<List<FleetUpdateRunStage>>? stages;

  /// Creates a new [FleetUpdateRunState].
  /// [fleetUpdateStrategyId] The ID of the Fleet Update Strategy. Only one of `fleet_update_strategy_id` or `stage` can be specified.
  /// [kubernetesFleetManagerId] The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Run to be created.
  /// [managedClusterUpdate] A `managed_cluster_update` block as defined below.
  /// [name] The name which should be used for this Kubernetes Fleet Update Run. Changing this forces a new Kubernetes Fleet Update Run to be created.
  /// [stages] One or more `stage` blocks as defined below. Only one of `stage` or `fleet_update_strategy_id` can be specified.
  FleetUpdateRunState({
    this.fleetUpdateStrategyId,
    this.kubernetesFleetManagerId,
    this.managedClusterUpdate,
    this.name,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetUpdateStrategyId': ?fleetUpdateStrategyId,
      'kubernetesFleetManagerId': ?kubernetesFleetManagerId,
      'managedClusterUpdate': ?pulumi.Input.mapOptionalInputValue<FleetUpdateRunManagedClusterUpdate, Map<String, dynamic>>(managedClusterUpdate, (value) => value.toMap()),
      'name': ?name,
      'stages': ?pulumi.Input.mapOptionalInputValue<List<FleetUpdateRunStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<FleetUpdateRunStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetUpdateRunState.fromMap(Map<String, dynamic> map) {
    return FleetUpdateRunState(
      fleetUpdateStrategyId: map['fleetUpdateStrategyId'] == null ? null : (map['fleetUpdateStrategyId']! as String).input(),
      kubernetesFleetManagerId: map['kubernetesFleetManagerId'] == null ? null : (map['kubernetesFleetManagerId']! as String).input(),
      managedClusterUpdate: map['managedClusterUpdate'] == null ? null : (FleetUpdateRunManagedClusterUpdate.fromMap((map['managedClusterUpdate']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      stages: map['stages'] == null ? null : (pulumi.Input.decodeList<FleetUpdateRunStage>(map['stages']!, (value) => FleetUpdateRunStage.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

