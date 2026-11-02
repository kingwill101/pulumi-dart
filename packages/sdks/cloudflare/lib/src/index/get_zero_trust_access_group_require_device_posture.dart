// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireDevicePosture {
  /// The ID of the account that owns the device posture integration.
  final pulumi.Input<String> accountId;
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessGroupRequireDevicePosture].
  /// [accountId] The ID of the account that owns the device posture integration.
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessGroupRequireDevicePosture({
    required this.accountId,
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessGroupRequireDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireDevicePosture(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
