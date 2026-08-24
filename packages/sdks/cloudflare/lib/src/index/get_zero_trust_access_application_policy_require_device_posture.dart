// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyRequireDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyRequireDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessApplicationPolicyRequireDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyRequireDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyRequireDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
