// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneDnsSettingsNameservers {
  /// Identifier of the account-owned Custom Nameserver Set to use for this zone.
  final pulumi.Input<String> nameserverSetId;
  /// Configured nameserver set number to use for this zone.
  final pulumi.Input<int> nsSet;
  /// Nameserver type.
  /// Available values: "cloudflare.standard", "custom.account", "custom.tenant", "custom.zone", "custom".
  final pulumi.Input<String> type;

  /// Creates a new [GetZoneDnsSettingsNameservers].
  /// [nameserverSetId] Identifier of the account-owned Custom Nameserver Set to use for this zone.
  /// [nsSet] Configured nameserver set number to use for this zone.
  /// [type] Nameserver type.
  const GetZoneDnsSettingsNameservers({
    required this.nameserverSetId,
    required this.nsSet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameserverSetId': nameserverSetId,
      'nsSet': nsSet,
      'type': type,
    };
  }

  factory GetZoneDnsSettingsNameservers.fromMap(Map<String, dynamic> map) {
    return GetZoneDnsSettingsNameservers(
      nameserverSetId: pulumi.Input.fromValue(map['nameserverSetId'] as String),
      nsSet: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['nsSet'])),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
