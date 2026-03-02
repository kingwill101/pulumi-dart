// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'txt_record_record.dart';

/// {@template pulumi_dns_txt_record_txt_record_args_doc}
/// The set of arguments for TxtRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_txt_record_txt_record_args_doc}
class TxtRecordArgs {
  /// The name of the DNS TXT Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of values that make up the txt record. Each `record` block supports fields documented below.
  final pulumi.Input<List<TxtRecordRecord>> records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [TxtRecordArgs].
  /// [name] The name of the DNS TXT Record. Changing this forces a new resource to be created.
  /// [records] A list of values that make up the txt record. Each `record` block supports fields documented below.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  TxtRecordArgs({
    this.name,
    required this.records,
    required this.resourceGroupName,
    this.tags,
    required this.ttl,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'records': pulumi.Input.mapInputValue<List<TxtRecordRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<TxtRecordRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory TxtRecordArgs.fromMap(Map<String, dynamic> map) {
    return TxtRecordArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      records: (pulumi.Input.decodeList<TxtRecordRecord>(map['records'], (value) => TxtRecordRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      ttl: (map['ttl'] as int).input(),
      zoneName: (map['zoneName'] as String).input(),
    );
  }
}

