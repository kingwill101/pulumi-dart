// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Partner region information for the failover group.
class PartnerRegionInfo {
  /// Geo location of the partner managed instances.
  final pulumi.Input<String?>? location;

  /// Creates a new [PartnerRegionInfo].
  /// [location] Geo location of the partner managed instances.
  const PartnerRegionInfo({
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
    };
  }

  factory PartnerRegionInfo.fromMap(Map<String, dynamic> map) {
    return PartnerRegionInfo(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
