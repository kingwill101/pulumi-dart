// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_zone_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_dns_zone_zone_args_doc}
class ZoneArgs {
  /// Attributes for the DNS Service scheduler.
  /// Changing this creates a new zone.
  final pulumi.Input<Map<String, String>>? attributes;
  /// A description of the zone.
  final pulumi.Input<String>? description;
  /// Disable wait for zone to reach ACTIVE
  /// status. The check is enabled by default. If this argument is true, zone
  /// will be considered as created/updated if OpenStack request returned success.
  final pulumi.Input<bool>? disableStatusCheck;
  /// The email contact for the zone record.
  final pulumi.Input<String>? email;
  /// An array of master DNS servers. For when `type` is
  /// `SECONDARY`.
  final pulumi.Input<List<String>>? masters;
  /// The name of the zone. Note the `.` at the end of the name.
  /// Changing this creates a new DNS zone.
  final pulumi.Input<String>? name;
  /// The ID of the project DNS zone is created
  /// for, sets `X-Auth-Sudo-Tenant-ID` header (requires an assigned
  /// user role in target project).
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 DNS client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new DNS zone.
  final pulumi.Input<String>? region;
  /// The time to live (TTL) of the zone.
  final pulumi.Input<int>? ttl;
  /// The type of zone. Can either be `PRIMARY` or `SECONDARY`.
  /// Changing this creates a new zone.
  final pulumi.Input<String>? type;
  /// Map of additional options. Changing this creates a
  /// new zone.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [ZoneArgs].
  /// [attributes] Attributes for the DNS Service scheduler.
  /// [description] A description of the zone.
  /// [disableStatusCheck] Disable wait for zone to reach ACTIVE
  /// [email] The email contact for the zone record.
  /// [masters] An array of master DNS servers. For when `type` is
  /// [name] The name of the zone. Note the `.` at the end of the name.
  /// [projectId] The ID of the project DNS zone is created
  /// [region] The region in which to obtain the V2 DNS client.
  /// [ttl] The time to live (TTL) of the zone.
  /// [type] The type of zone. Can either be `PRIMARY` or `SECONDARY`.
  /// [valueSpecs] Map of additional options. Changing this creates a
  ZoneArgs({
    this.attributes,
    this.description,
    this.disableStatusCheck,
    this.email,
    this.masters,
    this.name,
    this.projectId,
    this.region,
    this.ttl,
    this.type,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'description': ?description,
      'disableStatusCheck': ?disableStatusCheck,
      'email': ?email,
      'masters': ?masters,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'ttl': ?ttl,
      'type': ?type,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      attributes: map['attributes'] == null ? null : ((map['attributes'] as Map).cast<String, String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disableStatusCheck: map['disableStatusCheck'] == null ? null : (map['disableStatusCheck'] as bool).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      masters: map['masters'] == null ? null : ((map['masters'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      valueSpecs: map['valueSpecs'] == null ? null : ((map['valueSpecs'] as Map).cast<String, String>()).input(),
    );
  }
}

