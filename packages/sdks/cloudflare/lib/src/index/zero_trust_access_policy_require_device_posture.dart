// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [ZeroTrustAccessPolicyRequireDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const ZeroTrustAccessPolicyRequireDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory ZeroTrustAccessPolicyRequireDevicePosture.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
