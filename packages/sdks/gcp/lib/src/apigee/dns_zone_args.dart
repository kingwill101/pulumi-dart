// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_peering_config.dart';

/// {@template pulumi_apigee_dns_zone_dns_zone_args_doc}
/// The set of arguments for DnsZone.
/// {@endtemplate}
/// {@macro pulumi_apigee_dns_zone_dns_zone_args_doc}
class DnsZoneArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description for the zone.
  /// [dnsZoneId] ID of the dns zone.
  /// [domain] Doamin for the zone.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [peeringConfig] Peering zone config
  const DnsZoneArgs({
    this.deletionPolicy,
    required this.description,
    required this.dnsZoneId,
    required this.domain,
    required this.orgId,
    required this.peeringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': description,
      'dnsZoneId': dnsZoneId,
      'domain': domain,
      'orgId': orgId,
      'peeringConfig': pulumi.Input.mapInputValue<DnsZonePeeringConfig, Map<String, dynamic>>(peeringConfig, (value) => value.toMap()),
    };
  }

  factory DnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      dnsZoneId: pulumi.Input.fromValue(map['dnsZoneId'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      peeringConfig: pulumi.Input.fromValue(DnsZonePeeringConfig.fromMap((map['peeringConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
