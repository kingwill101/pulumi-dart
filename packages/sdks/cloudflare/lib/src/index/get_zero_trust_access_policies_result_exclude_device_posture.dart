// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultExcludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessPoliciesResultExcludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessPoliciesResultExcludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessPoliciesResultExcludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultExcludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
