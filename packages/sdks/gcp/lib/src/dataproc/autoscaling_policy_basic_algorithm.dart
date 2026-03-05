// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_basic_algorithm_yarn_config.dart';

class AutoscalingPolicyBasicAlgorithm {
  /// Duration between scaling events. A scaling period starts after the
  /// update operation from the previous event has completed.
  /// Bounds: [2m, 1d]. Default: 2m.
  final pulumi.Input<String>? cooldownPeriod;
  /// YARN autoscaling configuration.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicyBasicAlgorithmYarnConfig> yarnConfig;

  /// Creates a new [AutoscalingPolicyBasicAlgorithm].
  /// [cooldownPeriod] Duration between scaling events. A scaling period starts after the
  /// [yarnConfig] YARN autoscaling configuration.
  AutoscalingPolicyBasicAlgorithm({
    this.cooldownPeriod,
    required this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': ?cooldownPeriod,
      'yarnConfig': pulumi.Input.mapInputValue<AutoscalingPolicyBasicAlgorithmYarnConfig, Map<String, dynamic>>(yarnConfig, (value) => value.toMap()),
    };
  }

  factory AutoscalingPolicyBasicAlgorithm.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyBasicAlgorithm(
      cooldownPeriod: (() { final guardedValue = map['cooldownPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      yarnConfig: pulumi.Input.fromValue(AutoscalingPolicyBasicAlgorithmYarnConfig.fromMap((map['yarnConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

