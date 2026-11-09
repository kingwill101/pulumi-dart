// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneDnsSettingsNameservers {
  /// Identifier of the account-owned Custom Nameserver Set to use for this zone.
  final pulumi.Input<String?>? nameserverSetId;
  /// Configured nameserver set number to use for this zone.
  final pulumi.Input<int?>? nsSet;
  /// Nameserver type.
  /// Available values: "cloudflare.standard", "cloudflare.advanced", "custom.account", "custom.tenant", "custom.zone", "custom".
  final pulumi.Input<String> type;

  /// Creates a new [ZoneDnsSettingsNameservers].
  /// [nameserverSetId] Identifier of the account-owned Custom Nameserver Set to use for this zone.
  /// [nsSet] Configured nameserver set number to use for this zone.
  /// [type] Nameserver type.
  const ZoneDnsSettingsNameservers({
    this.nameserverSetId,
    this.nsSet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameserverSetId': ?nameserverSetId,
      'nsSet': ?nsSet,
      'type': type,
    };
  }

  factory ZoneDnsSettingsNameservers.fromMap(Map<String, dynamic> map) {
    return ZoneDnsSettingsNameservers(
      nameserverSetId: (() { final guardedValue = map['nameserverSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nsSet: (() { final guardedValue = map['nsSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
