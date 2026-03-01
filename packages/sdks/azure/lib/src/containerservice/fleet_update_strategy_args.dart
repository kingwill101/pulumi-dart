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
    required pulumi.Output<String> kubernetesFleetManagerId,
    pulumi.Output<String>? name,
    required pulumi.Output<List<FleetUpdateStrategyStage>> stages,
  }) :
      kubernetesFleetManagerId = pulumi.Input.asInput<String>(kubernetesFleetManagerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      stages = pulumi.Input.asInput<List<FleetUpdateStrategyStage>>(stages);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesFleetManagerId': kubernetesFleetManagerId,
      'name': ?name,
      'stages': pulumi.Input.mapInputValue<List<FleetUpdateStrategyStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<FleetUpdateStrategyStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetUpdateStrategyArgs.fromMap(Map<String, dynamic> map) {
    return FleetUpdateStrategyArgs(
      kubernetesFleetManagerId: pulumi.Output.create<String>(map['kubernetesFleetManagerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      stages: pulumi.Output.create<List<FleetUpdateStrategyStage>>(pulumi.Input.decodeList<FleetUpdateStrategyStage>(map['stages'], (value) => FleetUpdateStrategyStage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

