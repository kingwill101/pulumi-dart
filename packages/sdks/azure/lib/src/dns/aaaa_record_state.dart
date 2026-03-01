// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AaaaRecord resources.
class AaaaRecordState {
  /// The FQDN of the DNS AAAA Record.
  final pulumi.Input<String>? fqdn;
  /// The name of the DNS AAAA Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// List of IPv6 Addresses. Conflicts with `target_resource_id`.
  final pulumi.Input<List<String>>? records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** either `records` OR `target_resource_id` must be specified, but not both.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Azure resource id of the target object. Conflicts with `records`.
  final pulumi.Input<String>? targetResourceId;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int>? ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [AaaaRecordState].
  /// [fqdn] The FQDN of the DNS AAAA Record.
  /// [name] The name of the DNS AAAA Record. Changing this forces a new resource to be created.
  /// [records] List of IPv6 Addresses. Conflicts with `target_resource_id`.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetResourceId] The Azure resource id of the target object. Conflicts with `records`.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  AaaaRecordState({
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? records,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetResourceId,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? zoneName,
  }) :
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asOptionalInput<List<String>>(records),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      zoneName = pulumi.Input.asOptionalInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'name': ?name,
      'records': ?records,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory AaaaRecordState.fromMap(Map<String, dynamic> map) {
    return AaaaRecordState(
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      records: map['records'] == null ? null : pulumi.Output.create<List<String>>((map['records'] as List).cast<String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      zoneName: map['zoneName'] == null ? null : pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

