// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> locationName;
  /// The state of the location rollout.
  final pulumi.Input<String>? state;

  /// Creates a new [GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus].
  /// [locationName] The identifier for this object. Format specified above.
  /// [state] The state of the location rollout.
  const GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus({
    required this.locationName,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationName': locationName,
      'state': ?state,
    };
  }

  factory GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyRolloutOperationRolloutStatusCurrentRolloutLocationRolloutStatus(
      locationName: pulumi.Input.fromValue(map['locationName'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
