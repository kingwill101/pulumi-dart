// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessPoliciesResultRequireDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
