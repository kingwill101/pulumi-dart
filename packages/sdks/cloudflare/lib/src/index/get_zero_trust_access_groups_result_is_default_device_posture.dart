// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessGroupsResultIsDefaultDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
