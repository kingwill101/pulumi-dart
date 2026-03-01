// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CnameRecord resources.
class CnameRecordState {
  /// The FQDN of the DNS CNAME Record.
  final pulumi.Input<String>? fqdn;
  /// The name of the DNS CNAME Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The target of the CNAME.
  final pulumi.Input<String>? record;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds. Possible values are between `0` and `2147483647`.
  final pulumi.Input<int>? ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [CnameRecordState].
  /// [fqdn] The FQDN of the DNS CNAME Record.
  /// [name] The name of the DNS CNAME Record. Changing this forces a new resource to be created.
  /// [record] The target of the CNAME.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds. Possible values are between `0` and `2147483647`.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  CnameRecordState({
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? record,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? zoneName,
  }) :
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      name = pulumi.Input.asOptionalInput<String>(name),
      record = pulumi.Input.asOptionalInput<String>(record),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      zoneName = pulumi.Input.asOptionalInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'name': ?name,
      'record': ?record,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'ttl': ?ttl,
      'zoneName': ?zoneName,
    };
  }

  factory CnameRecordState.fromMap(Map<String, dynamic> map) {
    return CnameRecordState(
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      record: map['record'] == null ? null : pulumi.Output.create<String>(map['record'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      zoneName: map['zoneName'] == null ? null : pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

