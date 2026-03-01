// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AddressScope resources.
class AddressScopeState {
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

  /// Creates a new [AddressScopeState].
  /// [ipVersion] IP version, either 4 (default) or 6. Changing this
  /// [name] The name of the address-scope. Changing this updates the
  /// [projectId] The owner of the address-scope. Required if admin
  /// [region] The region in which to obtain the V2 Networking client.
  /// [shared] Indicates whether this address-scope is shared across
  AddressScopeState({
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

  factory AddressScopeState.fromMap(Map<String, dynamic> map) {
    return AddressScopeState(
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<int>(map['ipVersion'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
    );
  }
}

