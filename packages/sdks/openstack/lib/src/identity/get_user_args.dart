// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_get_user_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_identity_get_user_get_user_args_doc}
class GetUserArgs {
  /// The domain this user belongs to.
  final pulumi.Input<String>? domainId;
  /// Whether the user is enabled or disabled. Valid
  /// values are `true` and `false`.
  final pulumi.Input<bool>? enabled;
  /// The identity provider ID of the user.
  final pulumi.Input<String>? idpId;
  /// The name of the user.
  final pulumi.Input<String>? name;
  /// Query for expired passwords. See the [OpenStack API docs](https://developer.openstack.org/api-ref/identity/v3/#list-users) for more information on the query format.
  final pulumi.Input<String>? passwordExpiresAt;
  /// The protocol ID of the user.
  final pulumi.Input<String>? protocolId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The unique ID of the user.
  final pulumi.Input<String>? uniqueId;

  /// Creates a new [GetUserArgs].
  /// [domainId] The domain this user belongs to.
  /// [enabled] Whether the user is enabled or disabled. Valid
  /// [idpId] The identity provider ID of the user.
  /// [name] The name of the user.
  /// [passwordExpiresAt] Query for expired passwords. See the [OpenStack API docs](https://developer.openstack.org/api-ref/identity/v3/#list-users) for more information on the query format.
  /// [protocolId] The protocol ID of the user.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [uniqueId] The unique ID of the user.
  GetUserArgs({
    this.domainId,
    this.enabled,
    this.idpId,
    this.name,
    this.passwordExpiresAt,
    this.protocolId,
    this.region,
    this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'enabled': ?enabled,
      'idpId': ?idpId,
      'name': ?name,
      'passwordExpiresAt': ?passwordExpiresAt,
      'protocolId': ?protocolId,
      'region': ?region,
      'uniqueId': ?uniqueId,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      domainId: map['domainId'] == null ? null : (map['domainId'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      idpId: map['idpId'] == null ? null : (map['idpId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      passwordExpiresAt: map['passwordExpiresAt'] == null ? null : (map['passwordExpiresAt'] as String).input(),
      protocolId: map['protocolId'] == null ? null : (map['protocolId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      uniqueId: map['uniqueId'] == null ? null : (map['uniqueId'] as String).input(),
    );
  }
}

