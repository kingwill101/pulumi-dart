// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mx_record_record.dart';

/// Input properties used for looking up and filtering MxRecord resources.
class MxRecordState {
  /// The FQDN of the DNS MX Record.
  final pulumi.Input<String?>? fqdn;
  /// The name of the DNS MX Record. Changing this forces a new resource to be created. Default to '@' for root zone entry.
  final pulumi.Input<String?>? name;
  /// One or more `record` blocks as defined below.
  final pulumi.Input<List<MxRecordRecord>?>? records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int?>? ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? zoneName;

  /// Creates a new [MxRecordState].
  /// [fqdn] The FQDN of the DNS MX Record.
  /// [name] The name of the DNS MX Record. Changing this forces a new resource to be created. Default to '@' for root zone entry.
  /// [records] One or more `record` blocks as defined below.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  const MxRecordState({
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
      'records': ?pulumi.Input.mapOptionalInputValue<List<MxRecordRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<MxRecordRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory MxRecordState.fromMap(Map<String, dynamic> map) {
    return MxRecordState(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      records: (() { final guardedValue = map['records']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MxRecordRecord>(guardedValue, (value) => MxRecordRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
