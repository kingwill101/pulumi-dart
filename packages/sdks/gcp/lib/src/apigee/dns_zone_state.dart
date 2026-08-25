// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_peering_config.dart';

/// Input properties used for looking up and filtering DnsZone resources.
class DnsZoneState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description for the zone.
  final pulumi.Input<String?>? description;
  /// ID of the dns zone.
  final pulumi.Input<String?>? dnsZoneId;
  /// Doamin for the zone.
  final pulumi.Input<String?>? domain;
  /// Name of the Dns Zone in the following format:
  /// organizations/{organization}/dnsZones/{dnsZone}.
  final pulumi.Input<String?>? name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String?>? orgId;
  /// Peering zone config
  /// Structure is documented below.
  final pulumi.Input<DnsZonePeeringConfig?>? peeringConfig;

  /// Creates a new [DnsZoneState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description for the zone.
  /// [dnsZoneId] ID of the dns zone.
  /// [domain] Doamin for the zone.
  /// [name] Name of the Dns Zone in the following format:
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [peeringConfig] Peering zone config
  const DnsZoneState({
    this.deletionPolicy,
    this.description,
    this.dnsZoneId,
    this.domain,
    this.name,
    this.orgId,
    this.peeringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsZoneId: (() { final guardedValue = map['dnsZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringConfig: (() { final guardedValue = map['peeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsZonePeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
