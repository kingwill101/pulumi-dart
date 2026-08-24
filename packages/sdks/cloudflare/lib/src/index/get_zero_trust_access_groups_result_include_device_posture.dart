// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIncludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessGroupsResultIncludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessGroupsResultIncludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessGroupsResultIncludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIncludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
