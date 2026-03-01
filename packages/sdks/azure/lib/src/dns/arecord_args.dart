// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_a_record_arecord_args_doc}
/// The set of arguments for ARecord.
/// {@endtemplate}
/// {@macro pulumi_dns_a_record_arecord_args_doc}
class ARecordArgs {
  /// The name of the DNS A Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// List of IPv4 Addresses. Conflicts with `target_resource_id`.
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
  ///
  /// > **Note:** The `zone_name` should be the name of resource `azure.dns.Zone` instead of `azure.privatedns.Zone`.
  final pulumi.Input<String> zoneName;

  /// Creates a new [ARecordArgs].
  /// [name] The name of the DNS A Record. Changing this forces a new resource to be created.
  /// [records] List of IPv4 Addresses. Conflicts with `target_resource_id`.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetResourceId] The Azure resource id of the target object. Conflicts with `records`.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  ARecordArgs({
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? records,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetResourceId,
    required pulumi.Output<int> ttl,
    required pulumi.Output<String> zoneName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asOptionalInput<List<String>>(records),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId),
      ttl = pulumi.Input.asInput<int>(ttl),
      zoneName = pulumi.Input.asInput<String>(zoneName);

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

  factory ARecordArgs.fromMap(Map<String, dynamic> map) {
    return ARecordArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      records: map['records'] == null ? null : pulumi.Output.create<List<String>>((map['records'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
      ttl: pulumi.Output.create<int>(map['ttl'] as int),
      zoneName: pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

