// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessGroupIsDefaultDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
