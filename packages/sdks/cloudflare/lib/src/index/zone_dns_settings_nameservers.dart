// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneDnsSettingsNameservers {
  /// Configured nameserver set to be used for this zone
  final pulumi.Input<int?>? nsSet;
  /// Nameserver type
  /// Available values: "cloudflare.standard", "custom.account", "custom.tenant", "custom.zone".
  final pulumi.Input<String?>? type;

  /// Creates a new [ZoneDnsSettingsNameservers].
  /// [nsSet] Configured nameserver set to be used for this zone
  /// [type] Nameserver type
  const ZoneDnsSettingsNameservers({
    this.nsSet,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nsSet': ?nsSet,
      'type': ?type,
    };
  }

  factory ZoneDnsSettingsNameservers.fromMap(Map<String, dynamic> map) {
    return ZoneDnsSettingsNameservers(
      nsSet: (() { final guardedValue = map['nsSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
