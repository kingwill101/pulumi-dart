// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh {
  /// Sets the profile ID for the VNTag8011QBH virtual port parameters.
  final pulumi.Input<String>? profileId;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh].
  /// [profileId] Sets the profile ID for the VNTag8011QBH virtual port parameters.
  const DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh({
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileId': ?profileId,
    };
  }

  factory DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh(
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

