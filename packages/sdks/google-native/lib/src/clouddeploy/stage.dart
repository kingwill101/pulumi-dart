// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_parameters.dart';
import 'strategy.dart';

/// Stage specifies a location to which to deploy.
class Stage {
  /// Optional. The deploy parameters to use for the target in this stage.
  final pulumi.Input<List<DeployParameters>>? deployParameters;
  /// Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  final pulumi.Input<List<String>>? profiles;
  /// Optional. The strategy to use for a `Rollout` to this stage.
  final pulumi.Input<Strategy>? strategy;
  /// The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  final pulumi.Input<String>? targetId;

  /// Creates a new [Stage].
  /// [deployParameters] Optional. The deploy parameters to use for the target in this stage.
  /// [profiles] Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  /// [strategy] Optional. The strategy to use for a `Rollout` to this stage.
  /// [targetId] The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  Stage({
    this.deployParameters,
    this.profiles,
    this.strategy,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployParameters': ?pulumi.Input.mapOptionalInputValue<List<DeployParameters>, List<Map<String, dynamic>>>(deployParameters, (value) => pulumi.Input.encodeList<DeployParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profiles': ?profiles,
      'strategy': ?pulumi.Input.mapOptionalInputValue<Strategy, Map<String, dynamic>>(strategy, (value) => value.toMap()),
      'targetId': ?targetId,
    };
  }

  factory Stage.fromMap(Map<String, dynamic> map) {
    return Stage(
      deployParameters: (() { final guardedValue = map['deployParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeployParameters>(guardedValue, (value) => DeployParameters.fromMap((value as Map).cast<String, dynamic>()))); })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Strategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

