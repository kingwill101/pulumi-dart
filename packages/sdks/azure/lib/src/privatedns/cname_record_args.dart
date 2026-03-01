// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_cname_record_cname_record_args_doc}
/// The set of arguments for CnameRecord.
/// {@endtemplate}
/// {@macro pulumi_privatedns_cname_record_cname_record_args_doc}
class CnameRecordArgs {
  /// The name of the DNS CNAME Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The target of the CNAME.
  final pulumi.Input<String> record;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
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
  CnameRecordArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> record,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<int> ttl,
    required pulumi.Output<String> zoneName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      record = pulumi.Input.asInput<String>(record),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asInput<int>(ttl),
      zoneName = pulumi.Input.asInput<String>(zoneName);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      record: pulumi.Output.create<String>(map['record'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      ttl: pulumi.Output.create<int>(map['ttl'] as int),
      zoneName: pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

