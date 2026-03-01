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
    pulumi.Output<String>? domainId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? idpId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? passwordExpiresAt,
    pulumi.Output<String>? protocolId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? uniqueId,
  }) :
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      idpId = pulumi.Input.asOptionalInput<String>(idpId),
      name = pulumi.Input.asOptionalInput<String>(name),
      passwordExpiresAt = pulumi.Input.asOptionalInput<String>(passwordExpiresAt),
      protocolId = pulumi.Input.asOptionalInput<String>(protocolId),
      region = pulumi.Input.asOptionalInput<String>(region),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId);

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
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      idpId: map['idpId'] == null ? null : pulumi.Output.create<String>(map['idpId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      passwordExpiresAt: map['passwordExpiresAt'] == null ? null : pulumi.Output.create<String>(map['passwordExpiresAt'] as String),
      protocolId: map['protocolId'] == null ? null : pulumi.Output.create<String>(map['protocolId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
    );
  }
}

