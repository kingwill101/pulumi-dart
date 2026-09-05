// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_a_aaarecord_aaaarecord_args_doc}
/// The set of arguments for AAAARecord.
/// {@endtemplate}
/// {@macro pulumi_privatedns_a_aaarecord_aaaarecord_args_doc}
class AAAARecordArgs {
  /// The name of the DNS A Record. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A list of IPv6 Addresses.
  final pulumi.Input<List<String>> records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [AAAARecordArgs].
  /// [name] The name of the DNS A Record. Changing this forces a new resource to be created.
  /// [records] A list of IPv6 Addresses.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  const AAAARecordArgs({
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

  factory AAAARecordArgs.fromMap(Map<String, dynamic> map) {
    return AAAARecordArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      records: pulumi.Input.fromValue((map['records'] as List).cast<String>()),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toInt()),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
