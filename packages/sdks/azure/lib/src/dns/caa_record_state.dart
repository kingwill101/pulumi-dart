// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'caa_record_record.dart';

/// Input properties used for looking up and filtering CaaRecord resources.
class CaaRecordState {
  /// The FQDN of the DNS CAA Record.
  final pulumi.Input<String>? fqdn;
  /// The name of the DNS CAA Record. If you are creating the record in the apex of the zone use `"@"` as the name. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of values that make up the CAA record. Each `record` block supports fields documented below.
  final pulumi.Input<List<CaaRecordRecord>>? records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int>? ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [CaaRecordState].
  /// [fqdn] The FQDN of the DNS CAA Record.
  /// [name] The name of the DNS CAA Record. If you are creating the record in the apex of the zone use `"@"` as the name. Changing this forces a new resource to be created.
  /// [records] A list of values that make up the CAA record. Each `record` block supports fields documented below.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  const CaaRecordState({
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
      'records': ?pulumi.Input.mapOptionalInputValue<List<CaaRecordRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<CaaRecordRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory CaaRecordState.fromMap(Map<String, dynamic> map) {
    return CaaRecordState(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CaaRecordRecord>(guardedValue, (value) => CaaRecordRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
