// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AAAARecord resources.
class AAAARecordState {
  /// The FQDN of the DNS AAAA Record.
  final pulumi.Input<String>? fqdn;
  /// The name of the DNS A Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of IPv6 Addresses.
  final pulumi.Input<List<String>>? records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int>? ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [AAAARecordState].
  /// [fqdn] The FQDN of the DNS AAAA Record.
  /// [name] The name of the DNS A Record. Changing this forces a new resource to be created.
  /// [records] A list of IPv6 Addresses.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  AAAARecordState({
    this.fqdn,
    this.name,
    this.records,
    this.resourceGroupName,
    this.tags,
    this.ttl,
    this.zoneName,
  });

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

  factory AAAARecordState.fromMap(Map<String, dynamic> map) {
    return AAAARecordState(
      fqdn: map['fqdn'] == null ? null : (map['fqdn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      records: map['records'] == null ? null : ((map['records'] as List).cast<String>()).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as int).input(),
      zoneName: map['zoneName'] == null ? null : (map['zoneName'] as String).input(),
    );
  }
}

