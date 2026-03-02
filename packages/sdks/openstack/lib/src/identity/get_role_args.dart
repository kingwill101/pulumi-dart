// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_get_role_get_role_args_doc}
/// Arguments for getRole.
/// {@endtemplate}
/// {@macro pulumi_identity_get_role_get_role_args_doc}
class GetRoleArgs {
  /// The domain the role belongs to.
  final pulumi.Input<String>? domainId;
  /// The name of the role.
  final pulumi.Input<String> name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRoleArgs].
  /// [domainId] The domain the role belongs to.
  /// [name] The name of the role.
  /// [region] The region in which to obtain the V3 Keystone client.
  GetRoleArgs({
    this.domainId,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'name': name,
      'region': ?region,
    };
  }

  factory GetRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleArgs(
      domainId: map['domainId'] == null ? null : (map['domainId'] as String).input(),
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

