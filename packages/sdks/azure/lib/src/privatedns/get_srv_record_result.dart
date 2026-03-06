// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_srv_record_record.dart';

/// Result data returned by getSrvRecord.
class GetSrvRecordResult {
  /// The FQDN of the Private DNS SRV Record.
  final String fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// A list of values that make up the SRV record. Each `record` block supports fields documented below.
  final List<GetSrvRecordRecord> records;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// The Time To Live (TTL) of the Private DNS record in seconds.
  final int ttl;
  final String zoneName;

  /// Creates a new [GetSrvRecordResult].
  /// [fqdn] The FQDN of the Private DNS SRV Record.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [records] A list of values that make up the SRV record. Each `record` block supports fields documented below.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  /// [ttl] The Time To Live (TTL) of the Private DNS record in seconds.
  /// [zoneName] Required.
  const GetSrvRecordResult({
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
      'records': pulumi.Input.encodeList<GetSrvRecordRecord, Map<String, dynamic>>(records, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory GetSrvRecordResult.fromMap(Map<String, dynamic> map) {
    return GetSrvRecordResult(
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      records: pulumi.Input.decodeList<GetSrvRecordRecord>(map['records']!, (value) => GetSrvRecordRecord.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      ttl: map['ttl'] as int,
      zoneName: map['zoneName'] as String,
    );
  }
}

