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
    pulumi.Output<String>? addressScopeId,
    pulumi.Output<int>? defaultPrefixlen,
    pulumi.Output<int>? defaultQuota,
    pulumi.Output<String>? description,
    pulumi.Output<int>? ipVersion,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<int>? maxPrefixlen,
    pulumi.Output<int>? minPrefixlen,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? shared,
    pulumi.Output<List<String>>? tags,
  }) :
      addressScopeId = pulumi.Input.asOptionalInput<String>(addressScopeId),
      defaultPrefixlen = pulumi.Input.asOptionalInput<int>(defaultPrefixlen),
      defaultQuota = pulumi.Input.asOptionalInput<int>(defaultQuota),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      maxPrefixlen = pulumi.Input.asOptionalInput<int>(maxPrefixlen),
      minPrefixlen = pulumi.Input.asOptionalInput<int>(minPrefixlen),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      shared = pulumi.Input.asOptionalInput<bool>(shared),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

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
      addressScopeId: map['addressScopeId'] == null ? null : pulumi.Output.create<String>(map['addressScopeId'] as String),
      defaultPrefixlen: map['defaultPrefixlen'] == null ? null : pulumi.Output.create<int>(map['defaultPrefixlen'] as int),
      defaultQuota: map['defaultQuota'] == null ? null : pulumi.Output.create<int>(map['defaultQuota'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<int>(map['ipVersion'] as int),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      maxPrefixlen: map['maxPrefixlen'] == null ? null : pulumi.Output.create<int>(map['maxPrefixlen'] as int),
      minPrefixlen: map['minPrefixlen'] == null ? null : pulumi.Output.create<int>(map['minPrefixlen'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
    );
  }
}

