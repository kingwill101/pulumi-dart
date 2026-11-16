// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeDevicePosture {
  /// The ID of the account that owns the device posture integration.
  final pulumi.Input<String?>? accountId;
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [ZeroTrustAccessPolicyExcludeDevicePosture].
  /// [accountId] The ID of the account that owns the device posture integration.
  /// [integrationUid] The ID of a device posture integration.
  const ZeroTrustAccessPolicyExcludeDevicePosture({
    this.accountId,
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'integrationUid': integrationUid,
    };
  }

  factory ZeroTrustAccessPolicyExcludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeDevicePosture(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
