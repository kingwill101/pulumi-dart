// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'srv_record_record.dart';

/// Input properties used for looking up and filtering SrvRecord resources.
class SrvRecordState {
  /// The FQDN of the DNS SRV Record.
  final pulumi.Input<String>? fqdn;
  /// The name of the DNS SRV Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of values that make up the SRV record. Each `record` block supports fields documented below.
  final pulumi.Input<List<SrvRecordRecord>>? records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int>? ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [SrvRecordState].
  /// [fqdn] The FQDN of the DNS SRV Record.
  /// [name] The name of the DNS SRV Record. Changing this forces a new resource to be created.
  /// [records] A list of values that make up the SRV record. Each `record` block supports fields documented below.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  SrvRecordState({
    this.fqdn,
    this.name,
    this.records,
    this.resourceGroupName,
    this.tags,
    this.ttl,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'name': ?name,
      'records': ?pulumi.Input.mapOptionalInputValue<List<SrvRecordRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<SrvRecordRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory SrvRecordState.fromMap(Map<String, dynamic> map) {
    return SrvRecordState(
      fqdn: map['fqdn'] == null ? null : (map['fqdn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      records: map['records'] == null ? null : (pulumi.Input.decodeList<SrvRecordRecord>(map['records'], (value) => SrvRecordRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as int).input(),
      zoneName: map['zoneName'] == null ? null : (map['zoneName'] as String).input(),
    );
  }
}

