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
      deployParameters: map['deployParameters'] == null ? null : (pulumi.Input.decodeList<DeployParameters>(map['deployParameters']!, (value) => DeployParameters.fromMap((value as Map).cast<String, dynamic>()))).input(),
      profiles: map['profiles'] == null ? null : ((map['profiles']! as List).cast<String>()).input(),
      strategy: map['strategy'] == null ? null : (Strategy.fromMap((map['strategy']! as Map).cast<String, dynamic>())).input(),
      targetId: map['targetId'] == null ? null : (map['targetId']! as String).input(),
    );
  }
}

