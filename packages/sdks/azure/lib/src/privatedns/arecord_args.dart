// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_a_record_arecord_args_doc}
/// The set of arguments for ARecord.
/// {@endtemplate}
/// {@macro pulumi_privatedns_a_record_arecord_args_doc}
class ARecordArgs {
  /// The name of the DNS A Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// List of IPv4 Addresses.
  final pulumi.Input<List<String>> records;
  /// Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [ARecordArgs].
  /// [name] The name of the DNS A Record. Changing this forces a new resource to be created.
  /// [records] List of IPv4 Addresses.
  /// [resourceGroupName] Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  ARecordArgs({
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
      'records': records,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory ARecordArgs.fromMap(Map<String, dynamic> map) {
    return ARecordArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      records: ((map['records'] as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      ttl: (map['ttl'] as int).input(),
      zoneName: (map['zoneName'] as String).input(),
    );
  }
}

