// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_role_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_identity_role_role_args_doc}
class RoleArgs {
  /// The domain the role belongs to.
  final pulumi.Input<String>? domainId;

  /// The name of the role.
  final pulumi.Input<String>? name;

  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new Role.
  final pulumi.Input<String>? region;

  /// Creates a new [RoleArgs].
  /// [domainId] The domain the role belongs to.
  /// [name] The name of the role.
  /// [region] The region in which to obtain the V3 Keystone client.
  RoleArgs({this.domainId, this.name, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      domainId: (() {
        final guardedValue = map['domainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
