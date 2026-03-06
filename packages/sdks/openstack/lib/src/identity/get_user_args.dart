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
  const GetUserArgs({
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
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idpId: (() { final guardedValue = map['idpId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordExpiresAt: (() { final guardedValue = map['passwordExpiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolId: (() { final guardedValue = map['protocolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

