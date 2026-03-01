// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_strategy_stage.dart';

/// Input properties used for looking up and filtering FleetUpdateStrategy resources.
class FleetUpdateStrategyState {
  /// The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  final pulumi.Input<String>? kubernetesFleetManagerId;
  /// The name which should be used for this Kubernetes Fleet Update Strategy. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  final pulumi.Input<String>? name;
  /// One or more `stage` blocks as defined below.
  final pulumi.Input<List<FleetUpdateStrategyStage>>? stages;

  /// Creates a new [FleetUpdateStrategyState].
  /// [kubernetesFleetManagerId] The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  /// [name] The name which should be used for this Kubernetes Fleet Update Strategy. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  /// [stages] One or more `stage` blocks as defined below.
  FleetUpdateStrategyState({
    pulumi.Output<String>? kubernetesFleetManagerId,
    pulumi.Output<String>? name,
    pulumi.Output<List<FleetUpdateStrategyStage>>? stages,
  }) :
      kubernetesFleetManagerId = pulumi.Input.asOptionalInput<String>(kubernetesFleetManagerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      stages = pulumi.Input.asOptionalInput<List<FleetUpdateStrategyStage>>(stages);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesFleetManagerId': ?kubernetesFleetManagerId,
      'name': ?name,
      'stages': ?pulumi.Input.mapOptionalInputValue<List<FleetUpdateStrategyStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<FleetUpdateStrategyStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetUpdateStrategyState.fromMap(Map<String, dynamic> map) {
    return FleetUpdateStrategyState(
      kubernetesFleetManagerId: map['kubernetesFleetManagerId'] == null ? null : pulumi.Output.create<String>(map['kubernetesFleetManagerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      stages: map['stages'] == null ? null : pulumi.Output.create<List<FleetUpdateStrategyStage>>(pulumi.Input.decodeList<FleetUpdateStrategyStage>(map['stages'], (value) => FleetUpdateStrategyStage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

