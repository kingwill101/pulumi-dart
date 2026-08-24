// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountDnsSettingsZoneDefaultsNameservers {
  /// Nameserver type
  /// Available values: "cloudflare.standard", "cloudflare.standard.random", "custom.account", "custom.tenant".
  final pulumi.Input<String?>? type;

  /// Creates a new [AccountDnsSettingsZoneDefaultsNameservers].
  /// [type] Nameserver type
  const AccountDnsSettingsZoneDefaultsNameservers({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory AccountDnsSettingsZoneDefaultsNameservers.fromMap(Map<String, dynamic> map) {
    return AccountDnsSettingsZoneDefaultsNameservers(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
