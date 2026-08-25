// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> locationName;
  /// The state of the location rollout.
  final pulumi.Input<String?>? state;

  /// Creates a new [GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus].
  /// [locationName] The identifier for this object. Format specified above.
  /// [state] The state of the location rollout.
  const GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus({
    required this.locationName,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationName': locationName,
      'state': ?state,
    };
  }

  factory GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyRolloutOperationRolloutStatusPreviousRolloutLocationRolloutStatus(
      locationName: pulumi.Input.fromValue(map['locationName'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
