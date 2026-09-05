// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_strategy_stage.dart';

/// Input properties used for looking up and filtering FleetUpdateStrategy resources.
class FleetUpdateStrategyState {
  /// The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  final pulumi.Input<String?>? kubernetesFleetManagerId;
  /// The name which should be used for this Kubernetes Fleet Update Strategy. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  final pulumi.Input<String?>? name;
  /// One or more `stage` blocks as defined below.
  final pulumi.Input<List<FleetUpdateStrategyStage>?>? stages;

  /// Creates a new [FleetUpdateStrategyState].
  /// [kubernetesFleetManagerId] The ID of the Fleet Manager. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  /// [name] The name which should be used for this Kubernetes Fleet Update Strategy. Changing this forces a new Kubernetes Fleet Update Strategy to be created.
  /// [stages] One or more `stage` blocks as defined below.
  const FleetUpdateStrategyState({
    this.kubernetesFleetManagerId,
    this.name,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesFleetManagerId': ?kubernetesFleetManagerId,
      'name': ?name,
      'stages': ?pulumi.Input.mapOptionalInputValue<List<FleetUpdateStrategyStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<FleetUpdateStrategyStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetUpdateStrategyState.fromMap(Map<String, dynamic> map) {
    return FleetUpdateStrategyState(
      kubernetesFleetManagerId: (() { final guardedValue = map['kubernetesFleetManagerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetUpdateStrategyStage>(guardedValue, (value) => FleetUpdateStrategyStage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
