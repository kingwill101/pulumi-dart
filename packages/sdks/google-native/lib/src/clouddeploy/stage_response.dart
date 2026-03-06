// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_parameters_response.dart';
import 'strategy_response.dart';

/// Stage specifies a location to which to deploy.
class StageResponse {
  /// Optional. The deploy parameters to use for the target in this stage.
  final pulumi.Input<List<DeployParametersResponse>> deployParameters;
  /// Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  final pulumi.Input<List<String>> profiles;
  /// Optional. The strategy to use for a `Rollout` to this stage.
  final pulumi.Input<StrategyResponse> strategy;
  /// The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  final pulumi.Input<String> targetId;

  /// Creates a new [StageResponse].
  /// [deployParameters] Optional. The deploy parameters to use for the target in this stage.
  /// [profiles] Skaffold profiles to use when rendering the manifest for this stage's `Target`.
  /// [strategy] Optional. The strategy to use for a `Rollout` to this stage.
  /// [targetId] The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.
  const StageResponse({
    required this.deployParameters,
    required this.profiles,
    required this.strategy,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployParameters': pulumi.Input.mapInputValue<List<DeployParametersResponse>, List<Map<String, dynamic>>>(deployParameters, (value) => pulumi.Input.encodeList<DeployParametersResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profiles': profiles,
      'strategy': pulumi.Input.mapInputValue<StrategyResponse, Map<String, dynamic>>(strategy, (value) => value.toMap()),
      'targetId': targetId,
    };
  }

  factory StageResponse.fromMap(Map<String, dynamic> map) {
    return StageResponse(
      deployParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<DeployParametersResponse>(map['deployParameters']!, (value) => DeployParametersResponse.fromMap((value as Map).cast<String, dynamic>()))),
      profiles: pulumi.Input.fromValue((map['profiles'] as List).cast<String>()),
      strategy: pulumi.Input.fromValue(StrategyResponse.fromMap((map['strategy']! as Map).cast<String, dynamic>())),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}

