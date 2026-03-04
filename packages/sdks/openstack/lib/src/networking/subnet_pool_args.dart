// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_subnet_pool_subnet_pool_args_doc}
/// The set of arguments for SubnetPool.
/// {@endtemplate}
/// {@macro pulumi_networking_subnet_pool_subnet_pool_args_doc}
class SubnetPoolArgs {
  /// The Neutron address scope to assign to the
  /// subnetpool. Changing this updates the address scope id of the existing
  /// subnetpool.
  final pulumi.Input<String>? addressScopeId;

  /// The size of the prefix to allocate when the cidr
  /// or prefixlen attributes are omitted when you create the subnet. Defaults to the
  /// MinPrefixLen. Changing this updates the default prefixlen of the existing
  /// subnetpool.
  final pulumi.Input<int>? defaultPrefixlen;

  /// The per-project quota on the prefix space that can be
  /// allocated from the subnetpool for project subnets. Changing this updates the
  /// default quota of the existing subnetpool.
  final pulumi.Input<int>? defaultQuota;

  /// The human-readable description for the subnetpool.
  /// Changing this updates the description of the existing subnetpool.
  final pulumi.Input<String>? description;

  /// The IP protocol version.
  final pulumi.Input<int>? ipVersion;

  /// Indicates whether the subnetpool is default
  /// subnetpool or not. Changing this updates the default status of the existing
  /// subnetpool.
  final pulumi.Input<bool>? isDefault;

  /// The maximum prefix size that can be allocated from
  /// the subnetpool. For IPv4 subnetpools, default is 32. For IPv6 subnetpools,
  /// default is 128. Changing this updates the max prefixlen of the existing
  /// subnetpool.
  final pulumi.Input<int>? maxPrefixlen;

  /// The smallest prefix that can be allocated from a
  /// subnetpool. For IPv4 subnetpools, default is 8. For IPv6 subnetpools, default
  /// is 64. Changing this updates the min prefixlen of the existing subnetpool.
  final pulumi.Input<int>? minPrefixlen;

  /// The name of the subnetpool. Changing this updates the name of
  /// the existing subnetpool.
  final pulumi.Input<String>? name;

  /// A list of subnet prefixes to assign to the subnetpool.
  /// Neutron API merges adjacent prefixes and treats them as a single prefix. Each
  /// subnet prefix must be unique among all subnet prefixes in all subnetpools that
  /// are associated with the address scope. Changing this updates the prefixes list
  /// of the existing subnetpool.
  final pulumi.Input<List<String>> prefixes;

  /// The owner of the subnetpool. Required if admin wants to
  /// create a subnetpool for another project. Changing this creates a new subnetpool.
  final pulumi.Input<String>? projectId;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron subnetpool. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// subnetpool.
  final pulumi.Input<String>? region;

  /// Indicates whether this subnetpool is shared across
  /// all projects. Changing this updates the shared status of the existing
  /// subnetpool.
  final pulumi.Input<bool>? shared;

  /// A set of string tags for the subnetpool.
  final pulumi.Input<List<String>>? tags;

  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [SubnetPoolArgs].
  /// [addressScopeId] The Neutron address scope to assign to the
  /// [defaultPrefixlen] The size of the prefix to allocate when the cidr
  /// [defaultQuota] The per-project quota on the prefix space that can be
  /// [description] The human-readable description for the subnetpool.
  /// [ipVersion] The IP protocol version.
  /// [isDefault] Indicates whether the subnetpool is default
  /// [maxPrefixlen] The maximum prefix size that can be allocated from
  /// [minPrefixlen] The smallest prefix that can be allocated from a
  /// [name] The name of the subnetpool. Changing this updates the name of
  /// [prefixes] A list of subnet prefixes to assign to the subnetpool.
  /// [projectId] The owner of the subnetpool. Required if admin wants to
  /// [region] The region in which to obtain the V2 Networking client.
  /// [shared] Indicates whether this subnetpool is shared across
  /// [tags] A set of string tags for the subnetpool.
  /// [valueSpecs] Map of additional options.
  SubnetPoolArgs({
    this.addressScopeId,
    this.defaultPrefixlen,
    this.defaultQuota,
    this.description,
    this.ipVersion,
    this.isDefault,
    this.maxPrefixlen,
    this.minPrefixlen,
    this.name,
    required this.prefixes,
    this.projectId,
    this.region,
    this.shared,
    this.tags,
    this.valueSpecs,
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
      'prefixes': prefixes,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
      'tags': ?tags,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory SubnetPoolArgs.fromMap(Map<String, dynamic> map) {
    return SubnetPoolArgs(
      addressScopeId: (() {
        final guardedValue = map['addressScopeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultPrefixlen: (() {
        final guardedValue = map['defaultPrefixlen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      defaultQuota: (() {
        final guardedValue = map['defaultQuota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      isDefault: (() {
        final guardedValue = map['isDefault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxPrefixlen: (() {
        final guardedValue = map['maxPrefixlen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minPrefixlen: (() {
        final guardedValue = map['minPrefixlen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefixes: pulumi.Input.fromValue(
        (map['prefixes'] as List).cast<String>(),
      ),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shared: (() {
        final guardedValue = map['shared'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      valueSpecs: (() {
        final guardedValue = map['valueSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
