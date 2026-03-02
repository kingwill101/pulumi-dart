// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_peering_config.dart';

/// Input properties used for looking up and filtering DnsZone resources.
class DnsZoneState {
  /// Description for the zone.
  final pulumi.Input<String>? description;
  /// ID of the dns zone.
  final pulumi.Input<String>? dnsZoneId;
  /// Doamin for the zone.
  final pulumi.Input<String>? domain;
  /// Name of the Dns Zone in the following format:
  /// organizations/{organization}/dnsZones/{dnsZone}.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// Peering zone config
  /// Structure is documented below.
  final pulumi.Input<DnsZonePeeringConfig>? peeringConfig;

  /// Creates a new [DnsZoneState].
  /// [description] Description for the zone.
  /// [dnsZoneId] ID of the dns zone.
  /// [domain] Doamin for the zone.
  /// [name] Name of the Dns Zone in the following format:
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [peeringConfig] Peering zone config
  DnsZoneState({
    this.description,
    this.dnsZoneId,
    this.domain,
    this.name,
    this.orgId,
    this.peeringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dnsZoneId': ?dnsZoneId,
      'domain': ?domain,
      'name': ?name,
      'orgId': ?orgId,
      'peeringConfig': ?pulumi.Input.mapOptionalInputValue<DnsZonePeeringConfig, Map<String, dynamic>>(peeringConfig, (value) => value.toMap()),
    };
  }

  factory DnsZoneState.fromMap(Map<String, dynamic> map) {
    return DnsZoneState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dnsZoneId: map['dnsZoneId'] == null ? null : (map['dnsZoneId'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId'] as String).input(),
      peeringConfig: map['peeringConfig'] == null ? null : (DnsZonePeeringConfig.fromMap((map['peeringConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

