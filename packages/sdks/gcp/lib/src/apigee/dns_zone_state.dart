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
    pulumi.Output<String>? description,
    pulumi.Output<String>? dnsZoneId,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? name,
    pulumi.Output<String>? orgId,
    pulumi.Output<DnsZonePeeringConfig>? peeringConfig,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsZoneId = pulumi.Input.asOptionalInput<String>(dnsZoneId),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      peeringConfig = pulumi.Input.asOptionalInput<DnsZonePeeringConfig>(peeringConfig);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsZoneId: map['dnsZoneId'] == null ? null : pulumi.Output.create<String>(map['dnsZoneId'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      peeringConfig: map['peeringConfig'] == null ? null : pulumi.Output.create<DnsZonePeeringConfig>(DnsZonePeeringConfig.fromMap((map['peeringConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

