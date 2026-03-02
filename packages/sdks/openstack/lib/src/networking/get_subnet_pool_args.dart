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
      addressScopeId: map['addressScopeId'] == null ? null : (map['addressScopeId'] as String).input(),
      defaultPrefixlen: map['defaultPrefixlen'] == null ? null : (map['defaultPrefixlen'] as int).input(),
      defaultQuota: map['defaultQuota'] == null ? null : (map['defaultQuota'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as int).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      maxPrefixlen: map['maxPrefixlen'] == null ? null : (map['maxPrefixlen'] as int).input(),
      minPrefixlen: map['minPrefixlen'] == null ? null : (map['minPrefixlen'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      shared: map['shared'] == null ? null : (map['shared'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
    );
  }
}

