// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_aaaa_record_aaaa_record_args_doc}
/// The set of arguments for AaaaRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_aaaa_record_aaaa_record_args_doc}
class AaaaRecordArgs {
  /// The name of the DNS AAAA Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// List of IPv6 Addresses. Conflicts with `target_resource_id`.
  final pulumi.Input<List<String>>? records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** either `records` OR `target_resource_id` must be specified, but not both.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Azure resource id of the target object. Conflicts with `records`.
  final pulumi.Input<String>? targetResourceId;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [AaaaRecordArgs].
  /// [name] The name of the DNS AAAA Record. Changing this forces a new resource to be created.
  /// [records] List of IPv6 Addresses. Conflicts with `target_resource_id`.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetResourceId] The Azure resource id of the target object. Conflicts with `records`.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  AaaaRecordArgs({
    this.name,
    this.records,
    required this.resourceGroupName,
    this.tags,
    this.targetResourceId,
    required this.ttl,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'records': ?records,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory AaaaRecordArgs.fromMap(Map<String, dynamic> map) {
    return AaaaRecordArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      records: map['records'] == null ? null : ((map['records'] as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId'] as String).input(),
      ttl: (map['ttl'] as int).input(),
      zoneName: (map['zoneName'] as String).input(),
    );
  }
}

