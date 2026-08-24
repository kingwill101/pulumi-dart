// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyRequireDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessPolicyRequireDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessPolicyRequireDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessPolicyRequireDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyRequireDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
