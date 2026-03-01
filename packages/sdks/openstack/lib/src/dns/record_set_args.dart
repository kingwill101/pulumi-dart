// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_record_set_record_set_args_doc}
/// The set of arguments for RecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_record_set_record_set_args_doc}
class RecordSetArgs {
  /// A description of the  record set.
  final pulumi.Input<String>? description;
  /// Disable wait for recordset to reach ACTIVE
  /// status. This argumen is disabled by default. If it is set to true, the recordset
  /// will be considered as created/updated/deleted if OpenStack request returned success.
  final pulumi.Input<bool>? disableStatusCheck;
  /// The name of the record set. Note the `.` at the end of the name.
  /// Changing this creates a new DNS  record set.
  final pulumi.Input<String>? name;
  /// The ID of the project DNS zone is created
  /// for, sets `X-Auth-Sudo-Tenant-ID` header (requires an assigned
  /// user role in target project)
  final pulumi.Input<String>? projectId;
  /// An array of DNS records.
  final pulumi.Input<List<String>> records;
  /// The region in which to obtain the V2 DNS client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new DNS  record set.
  final pulumi.Input<String>? region;
  /// The time to live (TTL) of the record set.
  final pulumi.Input<int>? ttl;
  /// The type of record set. Examples: "A", "MX".
  /// Changing this creates a new DNS  record set.
  final pulumi.Input<String>? type;
  /// Map of additional options. Changing this creates a
  /// new record set.
  final pulumi.Input<Map<String, String>>? valueSpecs;
  /// The ID of the zone in which to create the record set.
  /// Changing this creates a new DNS  record set.
  final pulumi.Input<String> zoneId;

  /// Creates a new [RecordSetArgs].
  /// [description] A description of the  record set.
  /// [disableStatusCheck] Disable wait for recordset to reach ACTIVE
  /// [name] The name of the record set. Note the `.` at the end of the name.
  /// [projectId] The ID of the project DNS zone is created
  /// [records] An array of DNS records.
  /// [region] The region in which to obtain the V2 DNS client.
  /// [ttl] The time to live (TTL) of the record set.
  /// [type] The type of record set. Examples: "A", "MX".
  /// [valueSpecs] Map of additional options. Changing this creates a
  /// [zoneId] The ID of the zone in which to create the record set.
  RecordSetArgs({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disableStatusCheck,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    required pulumi.Output<List<String>> records,
    pulumi.Output<String>? region,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? type,
    pulumi.Output<Map<String, String>>? valueSpecs,
    required pulumi.Output<String> zoneId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disableStatusCheck = pulumi.Input.asOptionalInput<bool>(disableStatusCheck),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      records = pulumi.Input.asInput<List<String>>(records),
      region = pulumi.Input.asOptionalInput<String>(region),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asOptionalInput<String>(type),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disableStatusCheck': ?disableStatusCheck,
      'name': ?name,
      'projectId': ?projectId,
      'records': records,
      'region': ?region,
      'ttl': ?ttl,
      'type': ?type,
      'valueSpecs': ?valueSpecs,
      'zoneId': zoneId,
    };
  }

  factory RecordSetArgs.fromMap(Map<String, dynamic> map) {
    return RecordSetArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableStatusCheck: map['disableStatusCheck'] == null ? null : pulumi.Output.create<bool>(map['disableStatusCheck'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      records: pulumi.Output.create<List<String>>((map['records'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

