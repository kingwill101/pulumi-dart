// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_rollout_policy.dart';

/// Settings for blue-green upgrade.
class BlueGreenSettings {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final pulumi.Input<String>? nodePoolSoakDuration;
  /// Standard policy for the blue-green upgrade.
  final pulumi.Input<StandardRolloutPolicy>? standardRolloutPolicy;

  /// Creates a new [BlueGreenSettings].
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade.
  BlueGreenSettings({
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolSoakDuration': ?nodePoolSoakDuration,
      'standardRolloutPolicy': ?pulumi.Input.mapOptionalInputValue<StandardRolloutPolicy, Map<String, dynamic>>(standardRolloutPolicy, (value) => value.toMap()),
    };
  }

  factory BlueGreenSettings.fromMap(Map<String, dynamic> map) {
    return BlueGreenSettings(
      nodePoolSoakDuration: (() { final guardedValue = map['nodePoolSoakDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardRolloutPolicy: (() { final guardedValue = map['standardRolloutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardRolloutPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

