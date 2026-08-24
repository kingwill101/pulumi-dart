// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountDnsSettingsZoneDefaultsInternalDns {
  /// The ID of the zone to fallback to.
  final pulumi.Input<String> referenceZoneId;

  /// Creates a new [GetAccountDnsSettingsZoneDefaultsInternalDns].
  /// [referenceZoneId] The ID of the zone to fallback to.
  const GetAccountDnsSettingsZoneDefaultsInternalDns({
    required this.referenceZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceZoneId': referenceZoneId,
    };
  }

  factory GetAccountDnsSettingsZoneDefaultsInternalDns.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsZoneDefaultsInternalDns(
      referenceZoneId: pulumi.Input.fromValue(map['referenceZoneId'] as String),
    );
  }
}
