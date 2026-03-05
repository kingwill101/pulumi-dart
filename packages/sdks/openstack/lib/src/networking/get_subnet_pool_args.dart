// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_subnet_pool_get_subnet_pool_args_doc}
/// Arguments for getSubnetPool.
/// {@endtemplate}
/// {@macro pulumi_networking_get_subnet_pool_get_subnet_pool_args_doc}
class GetSubnetPoolArgs {
  /// The Neutron address scope that subnetpools
  /// is assigned to.
  final pulumi.Input<String>? addressScopeId;
  /// The size of the subnetpool default prefix
  /// length.
  final pulumi.Input<int>? defaultPrefixlen;
  /// The per-project quota on the prefix space that
  /// can be allocated from the subnetpool for project subnets.
  final pulumi.Input<int>? defaultQuota;
  /// The human-readable description for the subnetpool.
  final pulumi.Input<String>? description;
  /// The IP protocol version.
  final pulumi.Input<int>? ipVersion;
  /// Whether the subnetpool is default subnetpool or not.
  final pulumi.Input<bool>? isDefault;
  /// The size of the subnetpool max prefix length.
  final pulumi.Input<int>? maxPrefixlen;
  /// The size of the subnetpool min prefix length.
  final pulumi.Input<int>? minPrefixlen;
  /// The name of the subnetpool.
  final pulumi.Input<String>? name;
  /// The owner of the subnetpool.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to retrieve a subnetpool id. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// Whether this subnetpool is shared across all projects.
  final pulumi.Input<bool>? shared;
  /// The list of subnetpool tags to filter.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetSubnetPoolArgs].
  /// [addressScopeId] The Neutron address scope that subnetpools
  /// [defaultPrefixlen] The size of the subnetpool default prefix
  /// [defaultQuota] The per-project quota on the prefix space that
  /// [description] The human-readable description for the subnetpool.
  /// [ipVersion] The IP protocol version.
  /// [isDefault] Whether the subnetpool is default subnetpool or not.
  /// [maxPrefixlen] The size of the subnetpool max prefix length.
  /// [minPrefixlen] The size of the subnetpool min prefix length.
  /// [name] The name of the subnetpool.
  /// [projectId] The owner of the subnetpool.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [shared] Whether this subnetpool is shared across all projects.
  /// [tags] The list of subnetpool tags to filter.
  GetSubnetPoolArgs({
    this.addressScopeId,
    this.defaultPrefixlen,
    this.defaultQuota,
    this.description,
    this.ipVersion,
    this.isDefault,
    this.maxPrefixlen,
    this.minPrefixlen,
    this.name,
    this.projectId,
    this.region,
    this.shared,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressScopeId': ?addressScopeId,
      'defaultPrefixlen': ?defaultPrefixlen,
      'defaultQuota': ?defaultQuota,
      'description': ?description,
      'ipVersion': ?ipVersion,
      'isDefault': ?isDefault,
      'maxPrefixlen': ?maxPrefixlen,
      'minPrefixlen': ?minPrefixlen,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
      'tags': ?tags,
    };
  }

  factory GetSubnetPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetPoolArgs(
      addressScopeId: (() { final guardedValue = map['addressScopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultPrefixlen: (() { final guardedValue = map['defaultPrefixlen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultQuota: (() { final guardedValue = map['defaultQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxPrefixlen: (() { final guardedValue = map['maxPrefixlen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minPrefixlen: (() { final guardedValue = map['minPrefixlen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shared: (() { final guardedValue = map['shared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

