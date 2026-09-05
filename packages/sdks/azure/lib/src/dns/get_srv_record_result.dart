// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_srv_record_record.dart';

/// Result data returned by getSrvRecord.
class GetSrvRecordResult {
  /// The FQDN of the DNS SRV Record.
  final String? fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// A list of values that make up the SRV record. Each `record` block supports fields documented below.
  final List<GetSrvRecordRecord>? records;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final int? ttl;
  final String? zoneName;

  /// Creates a new [GetSrvRecordResult].
  /// [fqdn] The FQDN of the DNS SRV Record.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [records] A list of values that make up the SRV record. Each `record` block supports fields documented below.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Optional.
  const GetSrvRecordResult({
    this.fqdn,
    this.id,
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
      'id': ?id,
      'name': ?name,
      'records': ?(() { final guardedValue = records; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSrvRecordRecord, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory GetSrvRecordResult.fromMap(Map<String, dynamic> map) {
    return GetSrvRecordResult(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSrvRecordRecord>(guardedValue, (value) => GetSrvRecordRecord.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
