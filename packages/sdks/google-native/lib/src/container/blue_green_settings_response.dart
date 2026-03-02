// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_rollout_policy_response.dart';

/// Settings for blue-green upgrade.
class BlueGreenSettingsResponse {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final pulumi.Input<String> nodePoolSoakDuration;
  /// Standard policy for the blue-green upgrade.
  final pulumi.Input<StandardRolloutPolicyResponse> standardRolloutPolicy;

  /// Creates a new [BlueGreenSettingsResponse].
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade.
  BlueGreenSettingsResponse({
    required this.nodePoolSoakDuration,
    required this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolSoakDuration': nodePoolSoakDuration,
      'standardRolloutPolicy': pulumi.Input.mapInputValue<StandardRolloutPolicyResponse, Map<String, dynamic>>(standardRolloutPolicy, (value) => value.toMap()),
    };
  }

  factory BlueGreenSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BlueGreenSettingsResponse(
      nodePoolSoakDuration: (map['nodePoolSoakDuration'] as String).input(),
      standardRolloutPolicy: (StandardRolloutPolicyResponse.fromMap((map['standardRolloutPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

