// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyRequireDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyRequireDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessApplicationsResultPolicyRequireDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyRequireDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyRequireDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
