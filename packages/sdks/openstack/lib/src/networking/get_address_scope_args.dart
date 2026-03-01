// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_address_scope_get_address_scope_args_doc}
/// Arguments for getAddressScope.
/// {@endtemplate}
/// {@macro pulumi_networking_get_address_scope_get_address_scope_args_doc}
class GetAddressScopeArgs {
  /// IP version.
  final pulumi.Input<int>? ipVersion;
  /// Name of the address-scope.
  final pulumi.Input<String>? name;
  /// The owner of the address-scope.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve address-scopes. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// Indicates whether this address-scope is shared across
  /// all projects.
  final pulumi.Input<bool>? shared;

  /// Creates a new [GetAddressScopeArgs].
  /// [ipVersion] IP version.
  /// [name] Name of the address-scope.
  /// [projectId] The owner of the address-scope.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [shared] Indicates whether this address-scope is shared across
  GetAddressScopeArgs({
    pulumi.Output<int>? ipVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? shared,
  }) :
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      shared = pulumi.Input.asOptionalInput<bool>(shared);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipVersion': ?ipVersion,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
    };
  }

  factory GetAddressScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressScopeArgs(
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<int>(map['ipVersion'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
    );
  }
}

