// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'srvrecord_record.dart';

/// {@template pulumi_privatedns_s_rvrecord_srvrecord_args_doc}
/// The set of arguments for SRVRecord.
/// {@endtemplate}
/// {@macro pulumi_privatedns_s_rvrecord_srvrecord_args_doc}
class SRVRecordArgs {
  /// The name of the DNS SRV Record. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// One or more `record` blocks as defined below.
  final pulumi.Input<List<SRVRecordRecord>> records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [SRVRecordArgs].
  /// [name] The name of the DNS SRV Record. Changing this forces a new resource to be created.
  /// [records] One or more `record` blocks as defined below.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  const SRVRecordArgs({
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
      'records': pulumi.Input.mapInputValue<List<SRVRecordRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<SRVRecordRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory SRVRecordArgs.fromMap(Map<String, dynamic> map) {
    return SRVRecordArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      records: pulumi.Input.fromValue(pulumi.Input.decodeList<SRVRecordRecord>(map['records']!, (value) => SRVRecordRecord.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toInt()),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
