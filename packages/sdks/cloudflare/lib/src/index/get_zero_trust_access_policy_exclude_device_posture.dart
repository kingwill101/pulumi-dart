// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyExcludeDevicePosture {
  /// The ID of the account that owns the device posture integration.
  final pulumi.Input<String> accountId;
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessPolicyExcludeDevicePosture].
  /// [accountId] The ID of the account that owns the device posture integration.
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessPolicyExcludeDevicePosture({
    required this.accountId,
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessPolicyExcludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyExcludeDevicePosture(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
