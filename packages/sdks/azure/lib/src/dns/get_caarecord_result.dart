// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_caarecord_record.dart';

/// Result data returned by getCAARecord.
class GetCAARecordResult {
  /// The FQDN of the DNS CAA Record.
  final String fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// A list of values that make up the CAA record. Each `record` block supports fields documented below.
  final List<GetCAARecordRecord> records;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final int ttl;
  final String zoneName;

  /// Creates a new [GetCAARecordResult].
  /// [fqdn] The FQDN of the DNS CAA Record.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [records] A list of values that make up the CAA record. Each `record` block supports fields documented below.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Required.
  const GetCAARecordResult({
    required this.fqdn,
    required this.id,
    required this.name,
    required this.records,
    required this.resourceGroupName,
    required this.tags,
    required this.ttl,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'id': id,
      'name': name,
      'records': pulumi.Input.encodeList<GetCAARecordRecord, Map<String, dynamic>>(records, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory GetCAARecordResult.fromMap(Map<String, dynamic> map) {
    return GetCAARecordResult(
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      records: pulumi.Input.decodeList<GetCAARecordRecord>(map['records']!, (value) => GetCAARecordRecord.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      ttl: map['ttl'] as int,
      zoneName: map['zoneName'] as String,
    );
  }
}
