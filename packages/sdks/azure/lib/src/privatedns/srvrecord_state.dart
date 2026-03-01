// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'srvrecord_record.dart';

/// Input properties used for looking up and filtering SRVRecord resources.
class SRVRecordState {
  /// The FQDN of the DNS SRV Record.
  final pulumi.Input<String>? fqdn;
  /// The name of the DNS SRV Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `record` blocks as defined below.
  final pulumi.Input<List<SRVRecordRecord>>? records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int>? ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [SRVRecordState].
  /// [fqdn] The FQDN of the DNS SRV Record.
  /// [name] The name of the DNS SRV Record. Changing this forces a new resource to be created.
  /// [records] One or more `record` blocks as defined below.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  SRVRecordState({
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? name,
    pulumi.Output<List<SRVRecordRecord>>? records,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? zoneName,
  }) :
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asOptionalInput<List<SRVRecordRecord>>(records),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      zoneName = pulumi.Input.asOptionalInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'name': ?name,
      'records': ?pulumi.Input.mapOptionalInputValue<List<SRVRecordRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<SRVRecordRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory SRVRecordState.fromMap(Map<String, dynamic> map) {
    return SRVRecordState(
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      records: map['records'] == null ? null : pulumi.Output.create<List<SRVRecordRecord>>(pulumi.Input.decodeList<SRVRecordRecord>(map['records'], (value) => SRVRecordRecord.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      zoneName: map['zoneName'] == null ? null : pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

