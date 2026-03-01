// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mx_record_record.dart';

/// Input properties used for looking up and filtering MxRecord resources.
class MxRecordState {
  /// The FQDN of the DNS MX Record.
  final pulumi.Input<String>? fqdn;
  /// The name of the DNS MX Record. Defaults to `@` (root). Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of values that make up the MX record. Each `record` block supports fields documented below.
  final pulumi.Input<List<MxRecordRecord>>? records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int>? ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [MxRecordState].
  /// [fqdn] The FQDN of the DNS MX Record.
  /// [name] The name of the DNS MX Record. Defaults to `@` (root). Changing this forces a new resource to be created.
  /// [records] A list of values that make up the MX record. Each `record` block supports fields documented below.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  MxRecordState({
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? name,
    pulumi.Output<List<MxRecordRecord>>? records,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? zoneName,
  }) :
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asOptionalInput<List<MxRecordRecord>>(records),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      zoneName = pulumi.Input.asOptionalInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'name': ?name,
      'records': ?pulumi.Input.mapOptionalInputValue<List<MxRecordRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<MxRecordRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory MxRecordState.fromMap(Map<String, dynamic> map) {
    return MxRecordState(
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      records: map['records'] == null ? null : pulumi.Output.create<List<MxRecordRecord>>(pulumi.Input.decodeList<MxRecordRecord>(map['records'], (value) => MxRecordRecord.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      zoneName: map['zoneName'] == null ? null : pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

