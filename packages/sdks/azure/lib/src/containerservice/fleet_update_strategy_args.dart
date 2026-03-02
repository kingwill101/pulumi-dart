// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_strategy_stage.dart';

/// {@template pulumi_containerservice_fleet_update_strategy_fleet_update_strategy_args_doc}
/// The set of arguments for FleetUpdateStrategy.
/// {@endtemplate}
/// {@macro pulumi_containerservice_fleet_update_strategy_fleet_update_strategy_args_doc}
class FleetUpdateStrategyArgs {
  /// The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  final pulumi.Input<String> kubernetesFleetManagerId;
  /// The name which should be used for this Kubernetes Fleet Update Strategy. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  final pulumi.Input<String>? name;
  /// One or more `stage` blocks as defined below.
  final pulumi.Input<List<FleetUpdateStrategyStage>> stages;

  /// Creates a new [FleetUpdateStrategyArgs].
  /// [kubernetesFleetManagerId] The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  /// [name] The name which should be used for this Kubernetes Fleet Update Strategy. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  /// [stages] One or more `stage` blocks as defined below.
  FleetUpdateStrategyArgs({
    required this.kubernetesFleetManagerId,
    this.name,
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesFleetManagerId': kubernetesFleetManagerId,
      'name': ?name,
      'stages': pulumi.Input.mapInputValue<List<FleetUpdateStrategyStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<FleetUpdateStrategyStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetUpdateStrategyArgs.fromMap(Map<String, dynamic> map) {
    return FleetUpdateStrategyArgs(
      kubernetesFleetManagerId: (map['kubernetesFleetManagerId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      stages: (pulumi.Input.decodeList<FleetUpdateStrategyStage>(map['stages'], (value) => FleetUpdateStrategyStage.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

