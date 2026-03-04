// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_rollout_policy_container_v1beta1.dart';

/// Settings for blue-green upgrade.
class BlueGreenSettingsContainerV1beta1 {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final pulumi.Input<String>? nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade.
  final pulumi.Input<StandardRolloutPolicyContainerV1beta1>?
  standardRolloutPolicy;

  /// Creates a new [BlueGreenSettingsContainerV1beta1].
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade.
  BlueGreenSettingsContainerV1beta1({
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolSoakDuration': ?nodePoolSoakDuration,
      'standardRolloutPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            StandardRolloutPolicyContainerV1beta1,
            Map<String, dynamic>
          >(standardRolloutPolicy, (value) => value.toMap()),
    };
  }

  factory BlueGreenSettingsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return BlueGreenSettingsContainerV1beta1(
      nodePoolSoakDuration: (() {
        final guardedValue = map['nodePoolSoakDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      standardRolloutPolicy: (() {
        final guardedValue = map['standardRolloutPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StandardRolloutPolicyContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
