// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_address_scope_address_scope_args_doc}
/// The set of arguments for AddressScope.
/// {@endtemplate}
/// {@macro pulumi_networking_address_scope_address_scope_args_doc}
class AddressScopeArgs {
  /// IP version, either 4 (default) or 6. Changing this
  /// creates a new address-scope.
  final pulumi.Input<int>? ipVersion;
  /// The name of the address-scope. Changing this updates the
  /// name of the existing address-scope.
  final pulumi.Input<String>? name;
  /// The owner of the address-scope. Required if admin
  /// wants to create a address-scope for another project. Changing this creates a
  /// new address-scope.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron address-scope. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// address-scope.
  final pulumi.Input<String>? region;
  /// Indicates whether this address-scope is shared across
  /// all projects. Changing this updates the shared status of the existing
  /// address-scope.
  final pulumi.Input<bool>? shared;

  /// Creates a new [AddressScopeArgs].
  /// [ipVersion] IP version, either 4 (default) or 6. Changing this
  /// [name] The name of the address-scope. Changing this updates the
  /// [projectId] The owner of the address-scope. Required if admin
  /// [region] The region in which to obtain the V2 Networking client.
  /// [shared] Indicates whether this address-scope is shared across
  AddressScopeArgs({
    this.ipVersion,
    this.name,
    this.projectId,
    this.region,
    this.shared,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipVersion': ?ipVersion,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
    };
  }

  factory AddressScopeArgs.fromMap(Map<String, dynamic> map) {
    return AddressScopeArgs(
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      shared: map['shared'] == null ? null : (map['shared']! as bool).input(),
    );
  }
}

