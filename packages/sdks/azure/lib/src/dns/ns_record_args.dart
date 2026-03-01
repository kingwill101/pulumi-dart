// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_ns_record_ns_record_args_doc}
/// The set of arguments for NsRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_ns_record_ns_record_args_doc}
class NsRecordArgs {
  /// The name of the DNS NS Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of values that make up the NS record.
  final pulumi.Input<List<String>> records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [NsRecordArgs].
  /// [name] The name of the DNS NS Record. Changing this forces a new resource to be created.
  /// [records] A list of values that make up the NS record.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  NsRecordArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<List<String>> records,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<int> ttl,
    required pulumi.Output<String> zoneName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asInput<List<String>>(records),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asInput<int>(ttl),
      zoneName = pulumi.Input.asInput<String>(zoneName);

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

  factory NsRecordArgs.fromMap(Map<String, dynamic> map) {
    return NsRecordArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      records: pulumi.Output.create<List<String>>((map['records'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      ttl: pulumi.Output.create<int>(map['ttl'] as int),
      zoneName: pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

