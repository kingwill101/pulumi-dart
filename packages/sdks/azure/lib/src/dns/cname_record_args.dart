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
  /// &gt; **Note:** either `record` OR `target_resource_id` must be specified, but not both.
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      record: (() {
        final guardedValue = map['record'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      targetResourceId: (() {
        final guardedValue = map['targetResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
