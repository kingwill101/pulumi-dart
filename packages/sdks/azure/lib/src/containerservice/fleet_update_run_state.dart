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
    pulumi.Output<String>? fleetUpdateStrategyId,
    pulumi.Output<String>? kubernetesFleetManagerId,
    pulumi.Output<FleetUpdateRunManagedClusterUpdate>? managedClusterUpdate,
    pulumi.Output<String>? name,
    pulumi.Output<List<FleetUpdateRunStage>>? stages,
  }) :
      fleetUpdateStrategyId = pulumi.Input.asOptionalInput<String>(fleetUpdateStrategyId),
      kubernetesFleetManagerId = pulumi.Input.asOptionalInput<String>(kubernetesFleetManagerId),
      managedClusterUpdate = pulumi.Input.asOptionalInput<FleetUpdateRunManagedClusterUpdate>(managedClusterUpdate),
      name = pulumi.Input.asOptionalInput<String>(name),
      stages = pulumi.Input.asOptionalInput<List<FleetUpdateRunStage>>(stages);

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
      fleetUpdateStrategyId: map['fleetUpdateStrategyId'] == null ? null : pulumi.Output.create<String>(map['fleetUpdateStrategyId'] as String),
      kubernetesFleetManagerId: map['kubernetesFleetManagerId'] == null ? null : pulumi.Output.create<String>(map['kubernetesFleetManagerId'] as String),
      managedClusterUpdate: map['managedClusterUpdate'] == null ? null : pulumi.Output.create<FleetUpdateRunManagedClusterUpdate>(FleetUpdateRunManagedClusterUpdate.fromMap((map['managedClusterUpdate'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      stages: map['stages'] == null ? null : pulumi.Output.create<List<FleetUpdateRunStage>>(pulumi.Input.decodeList<FleetUpdateRunStage>(map['stages'], (value) => FleetUpdateRunStage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

