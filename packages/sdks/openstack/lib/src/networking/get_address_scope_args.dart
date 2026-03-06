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
  const GetAddressScopeArgs({
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

  factory GetAddressScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressScopeArgs(
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shared: (() { final guardedValue = map['shared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

