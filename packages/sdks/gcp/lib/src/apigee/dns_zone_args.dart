// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_peering_config.dart';

/// {@template pulumi_apigee_dns_zone_dns_zone_args_doc}
/// The set of arguments for DnsZone.
/// {@endtemplate}
/// {@macro pulumi_apigee_dns_zone_dns_zone_args_doc}
class DnsZoneArgs {
  /// Description for the zone.
  final pulumi.Input<String> description;
  /// ID of the dns zone.
  final pulumi.Input<String> dnsZoneId;
  /// Doamin for the zone.
  final pulumi.Input<String> domain;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// Peering zone config
  /// Structure is documented below.
  final pulumi.Input<DnsZonePeeringConfig> peeringConfig;

  /// Creates a new [DnsZoneArgs].
  /// [description] Description for the zone.
  /// [dnsZoneId] ID of the dns zone.
  /// [domain] Doamin for the zone.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [peeringConfig] Peering zone config
  DnsZoneArgs({
    required pulumi.Output<String> description,
    required pulumi.Output<String> dnsZoneId,
    required pulumi.Output<String> domain,
    required pulumi.Output<String> orgId,
    required pulumi.Output<DnsZonePeeringConfig> peeringConfig,
  }) :
      description = pulumi.Input.asInput<String>(description),
      dnsZoneId = pulumi.Input.asInput<String>(dnsZoneId),
      domain = pulumi.Input.asInput<String>(domain),
      orgId = pulumi.Input.asInput<String>(orgId),
      peeringConfig = pulumi.Input.asInput<DnsZonePeeringConfig>(peeringConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'dnsZoneId': dnsZoneId,
      'domain': domain,
      'orgId': orgId,
      'peeringConfig': pulumi.Input.mapInputValue<DnsZonePeeringConfig, Map<String, dynamic>>(peeringConfig, (value) => value.toMap()),
    };
  }

  factory DnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneArgs(
      description: pulumi.Output.create<String>(map['description'] as String),
      dnsZoneId: pulumi.Output.create<String>(map['dnsZoneId'] as String),
      domain: pulumi.Output.create<String>(map['domain'] as String),
      orgId: pulumi.Output.create<String>(map['orgId'] as String),
      peeringConfig: pulumi.Output.create<DnsZonePeeringConfig>(DnsZonePeeringConfig.fromMap((map['peeringConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

