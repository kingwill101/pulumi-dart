// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_cname_record_cname_record_args_doc}
/// The set of arguments for CnameRecord.
/// {@endtemplate}
/// {@macro pulumi_privatedns_cname_record_cname_record_args_doc}
class CnameRecordArgs {
  /// The name of the DNS CNAME Record. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The target of the CNAME.
  final pulumi.Input<String> record;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds. Possible values are between `0` and `2147483647`.
  final pulumi.Input<int> ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [CnameRecordArgs].
  /// [name] The name of the DNS CNAME Record. Changing this forces a new resource to be created.
  /// [record] The target of the CNAME.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds. Possible values are between `0` and `2147483647`.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  const CnameRecordArgs({
    this.name,
    required this.record,
    required this.resourceGroupName,
    this.tags,
    required this.ttl,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'record': record,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory CnameRecordArgs.fromMap(Map<String, dynamic> map) {
    return CnameRecordArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      record: pulumi.Input.fromValue(map['record'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toInt()),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
