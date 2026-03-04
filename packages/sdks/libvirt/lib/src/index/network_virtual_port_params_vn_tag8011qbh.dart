// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkVirtualPortParamsVnTag8011qbh {
  /// Specifies the profile ID for VNTag 8011QBH virtual port parameters.
  final pulumi.Input<String>? profileId;

  /// Creates a new [NetworkVirtualPortParamsVnTag8011qbh].
  /// [profileId] Specifies the profile ID for VNTag 8011QBH virtual port parameters.
  NetworkVirtualPortParamsVnTag8011qbh({this.profileId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'profileId': ?profileId};
  }

  factory NetworkVirtualPortParamsVnTag8011qbh.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkVirtualPortParamsVnTag8011qbh(
      profileId: (() {
        final guardedValue = map['profileId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
