// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeDevicePosture {
  /// The ID of the account that owns the device posture integration.
  final pulumi.Input<String?>? accountId;
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [ZeroTrustAccessPolicyIncludeDevicePosture].
  /// [accountId] The ID of the account that owns the device posture integration.
  /// [integrationUid] The ID of a device posture integration.
  const ZeroTrustAccessPolicyIncludeDevicePosture({
    this.accountId,
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'integrationUid': integrationUid,
    };
  }

  factory ZeroTrustAccessPolicyIncludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeDevicePosture(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
