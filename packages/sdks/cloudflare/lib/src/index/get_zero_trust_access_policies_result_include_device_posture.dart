// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeDevicePosture {
  /// The ID of the account that owns the device posture integration.
  final pulumi.Input<String> accountId;
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeDevicePosture].
  /// [accountId] The ID of the account that owns the device posture integration.
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessPoliciesResultIncludeDevicePosture({
    required this.accountId,
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeDevicePosture(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
