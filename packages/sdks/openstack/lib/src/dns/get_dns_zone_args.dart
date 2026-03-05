// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_dns_zone_get_dns_zone_args_doc}
/// Arguments for getDnsZone.
/// {@endtemplate}
/// {@macro pulumi_dns_get_dns_zone_get_dns_zone_args_doc}
class GetDnsZoneArgs {
  /// Try to obtain zone ID by listing all projects
  /// (requires admin role by default, depends on your policy configuration)
  final pulumi.Input<String>? allProjects;
  /// Attributes of the DNS Service scheduler.
  final pulumi.Input<Map<String, String>>? attributes;
  /// The time the zone was created.
  final pulumi.Input<String>? createdAt;
  /// A description of the zone.
  final pulumi.Input<String>? description;
  /// The email contact for the zone record.
  final pulumi.Input<String>? email;
  /// An array of master DNS servers. When `type` is  `SECONDARY`.
  final pulumi.Input<List<String>>? masters;
  /// The name of the zone.
  final pulumi.Input<String>? name;
  /// The ID of the pool hosting the zone.
  final pulumi.Input<String>? poolId;
  /// The ID of the project the DNS zone is obtained from,
  /// sets `X-Auth-Sudo-Tenant-ID` header (requires an assigned user role in target project)
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 DNS client.
  /// A DNS client is needed to retrieve zone ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The serial number of the zone.
  final pulumi.Input<int>? serial;
  /// The zone's status.
  final pulumi.Input<String>? status;
  /// The time the zone was transferred.
  final pulumi.Input<String>? transferredAt;
  /// The time to live (TTL) of the zone.
  final pulumi.Input<int>? ttl;
  /// The type of the zone. Can either be `PRIMARY` or `SECONDARY`.
  final pulumi.Input<String>? type;
  /// The time the zone was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The version of the zone.
  final pulumi.Input<int>? version;

  /// Creates a new [GetDnsZoneArgs].
  /// [allProjects] Try to obtain zone ID by listing all projects
  /// [attributes] Attributes of the DNS Service scheduler.
  /// [createdAt] The time the zone was created.
  /// [description] A description of the zone.
  /// [email] The email contact for the zone record.
  /// [masters] An array of master DNS servers. When `type` is  `SECONDARY`.
  /// [name] The name of the zone.
  /// [poolId] The ID of the pool hosting the zone.
  /// [projectId] The ID of the project the DNS zone is obtained from,
  /// [region] The region in which to obtain the V2 DNS client.
  /// [serial] The serial number of the zone.
  /// [status] The zone's status.
  /// [transferredAt] The time the zone was transferred.
  /// [ttl] The time to live (TTL) of the zone.
  /// [type] The type of the zone. Can either be `PRIMARY` or `SECONDARY`.
  /// [updatedAt] The time the zone was last updated.
  /// [version] The version of the zone.
  GetDnsZoneArgs({
    this.allProjects,
    this.attributes,
    this.createdAt,
    this.description,
    this.email,
    this.masters,
    this.name,
    this.poolId,
    this.projectId,
    this.region,
    this.serial,
    this.status,
    this.transferredAt,
    this.ttl,
    this.type,
    this.updatedAt,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allProjects': ?allProjects,
      'attributes': ?attributes,
      'createdAt': ?createdAt,
      'description': ?description,
      'email': ?email,
      'masters': ?masters,
      'name': ?name,
      'poolId': ?poolId,
      'projectId': ?projectId,
      'region': ?region,
      'serial': ?serial,
      'status': ?status,
      'transferredAt': ?transferredAt,
      'ttl': ?ttl,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory GetDnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneArgs(
      allProjects: (() { final guardedValue = map['allProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masters: (() { final guardedValue = map['masters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serial: (() { final guardedValue = map['serial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transferredAt: (() { final guardedValue = map['transferredAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

