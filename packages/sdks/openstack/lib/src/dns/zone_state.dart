// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
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

  /// Creates a new [ZoneState].
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
  ZoneState({
    pulumi.Output<Map<String, String>>? attributes,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disableStatusCheck,
    pulumi.Output<String>? email,
    pulumi.Output<List<String>>? masters,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? type,
    pulumi.Output<Map<String, String>>? valueSpecs,
  }) :
      attributes = pulumi.Input.asOptionalInput<Map<String, String>>(attributes),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableStatusCheck = pulumi.Input.asOptionalInput<bool>(disableStatusCheck),
      email = pulumi.Input.asOptionalInput<String>(email),
      masters = pulumi.Input.asOptionalInput<List<String>>(masters),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asOptionalInput<String>(type),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

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

  factory ZoneState.fromMap(Map<String, dynamic> map) {
    return ZoneState(
      attributes: map['attributes'] == null ? null : pulumi.Output.create<Map<String, String>>((map['attributes'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableStatusCheck: map['disableStatusCheck'] == null ? null : pulumi.Output.create<bool>(map['disableStatusCheck'] as bool),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      masters: map['masters'] == null ? null : pulumi.Output.create<List<String>>((map['masters'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
    );
  }
}

