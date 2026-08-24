// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountDnsSettingsZoneDefaultsNameservers {
  /// Nameserver type
  /// Available values: "cloudflare.standard", "cloudflare.standard.random", "custom.account", "custom.tenant".
  final pulumi.Input<String> type;

  /// Creates a new [GetAccountDnsSettingsZoneDefaultsNameservers].
  /// [type] Nameserver type
  const GetAccountDnsSettingsZoneDefaultsNameservers({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetAccountDnsSettingsZoneDefaultsNameservers.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsZoneDefaultsNameservers(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
