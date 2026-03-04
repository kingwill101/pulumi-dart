// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'caa_record_record.dart';

/// {@template pulumi_dns_caa_record_caa_record_args_doc}
/// The set of arguments for CaaRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_caa_record_caa_record_args_doc}
class CaaRecordArgs {
  /// The name of the DNS CAA Record. If you are creating the record in the apex of the zone use `"@"` as the name. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// A list of values that make up the CAA record. Each `record` block supports fields documented below.
  final pulumi.Input<List<CaaRecordRecord>> records;

  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;

  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [CaaRecordArgs].
  /// [name] The name of the DNS CAA Record. If you are creating the record in the apex of the zone use `"@"` as the name. Changing this forces a new resource to be created.
  /// [records] A list of values that make up the CAA record. Each `record` block supports fields documented below.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  CaaRecordArgs({
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
      'records':
          pulumi.Input.mapInputValue<
            List<CaaRecordRecord>,
            List<Map<String, dynamic>>
          >(
            records,
            (value) =>
                pulumi.Input.encodeList<CaaRecordRecord, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory CaaRecordArgs.fromMap(Map<String, dynamic> map) {
    return CaaRecordArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      records: pulumi.Input.fromValue(
        pulumi.Input.decodeList<CaaRecordRecord>(
          map['records']!,
          (value) =>
              CaaRecordRecord.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
