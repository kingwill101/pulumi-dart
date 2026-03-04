// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RecordSet resources.
class RecordSetState {
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
  final pulumi.Input<List<String>>? records;

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
  final pulumi.Input<String>? zoneId;

  /// Creates a new [RecordSetState].
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
  RecordSetState({
    this.description,
    this.disableStatusCheck,
    this.name,
    this.projectId,
    this.records,
    this.region,
    this.ttl,
    this.type,
    this.valueSpecs,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disableStatusCheck': ?disableStatusCheck,
      'name': ?name,
      'projectId': ?projectId,
      'records': ?records,
      'region': ?region,
      'ttl': ?ttl,
      'type': ?type,
      'valueSpecs': ?valueSpecs,
      'zoneId': ?zoneId,
    };
  }

  factory RecordSetState.fromMap(Map<String, dynamic> map) {
    return RecordSetState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableStatusCheck: (() {
        final guardedValue = map['disableStatusCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      records: (() {
        final guardedValue = map['records'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueSpecs: (() {
        final guardedValue = map['valueSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
