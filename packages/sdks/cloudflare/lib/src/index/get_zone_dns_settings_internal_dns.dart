// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneDnsSettingsInternalDns {
  /// The ID of the zone to fallback to.
  final pulumi.Input<String> referenceZoneId;

  /// Creates a new [GetZoneDnsSettingsInternalDns].
  /// [referenceZoneId] The ID of the zone to fallback to.
  const GetZoneDnsSettingsInternalDns({
    required this.referenceZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceZoneId': referenceZoneId,
    };
  }

  factory GetZoneDnsSettingsInternalDns.fromMap(Map<String, dynamic> map) {
    return GetZoneDnsSettingsInternalDns(
      referenceZoneId: pulumi.Input.fromValue(map['referenceZoneId'] as String),
    );
  }
}
