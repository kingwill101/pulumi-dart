// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PtrRecord resources.
class PtrRecordState {
  /// The FQDN of the DNS PTR Record.
  final pulumi.Input<String>? fqdn;
  /// The name of the DNS PTR Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// List of Fully Qualified Domain Names.
  final pulumi.Input<List<String>>? records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int>? ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [PtrRecordState].
  /// [fqdn] The FQDN of the DNS PTR Record.
  /// [name] The name of the DNS PTR Record. Changing this forces a new resource to be created.
  /// [records] List of Fully Qualified Domain Names.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  PtrRecordState({
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? records,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? zoneName,
  }) :
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asOptionalInput<List<String>>(records),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      zoneName = pulumi.Input.asOptionalInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'name': ?name,
      'records': ?records,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory PtrRecordState.fromMap(Map<String, dynamic> map) {
    return PtrRecordState(
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      records: map['records'] == null ? null : pulumi.Output.create<List<String>>((map['records'] as List).cast<String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      zoneName: map['zoneName'] == null ? null : pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

