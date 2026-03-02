// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_c_name_record_cname_record_args_doc}
/// The set of arguments for CNameRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_c_name_record_cname_record_args_doc}
class CNameRecordArgs {
  /// The name of the DNS CNAME Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The target of the CNAME.
  final pulumi.Input<String>? record;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** either `record` OR `target_resource_id` must be specified, but not both.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Azure resource id of the target object. Conflicts with `record`.
  final pulumi.Input<String>? targetResourceId;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [CNameRecordArgs].
  /// [name] The name of the DNS CNAME Record. Changing this forces a new resource to be created.
  /// [record] The target of the CNAME.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetResourceId] The Azure resource id of the target object. Conflicts with `record`.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  CNameRecordArgs({
    this.name,
    this.record,
    required this.resourceGroupName,
    this.tags,
    this.targetResourceId,
    required this.ttl,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'record': ?record,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory CNameRecordArgs.fromMap(Map<String, dynamic> map) {
    return CNameRecordArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      record: map['record'] == null ? null : (map['record'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId'] as String).input(),
      ttl: (map['ttl'] as int).input(),
      zoneName: (map['zoneName'] as String).input(),
    );
  }
}

