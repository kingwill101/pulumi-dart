// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_get_auth_scope_get_auth_scope_args_doc}
/// Arguments for getAuthScope.
/// {@endtemplate}
/// {@macro pulumi_identity_get_auth_scope_get_auth_scope_args_doc}
class GetAuthScopeArgs {
  /// The name of the scope. This is an arbitrary name which is
  /// only used as a unique identifier so an actual token isn't used as the ID.
  final pulumi.Input<String> name;
  /// The region in which to obtain the V3 Identity client.
  /// A Identity client is needed to retrieve tokens IDs. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// A boolean argument that determines whether to
  /// export the current auth scope token ID. When set to `true`, the `token_id`
  /// attribute will contain an unencrypted token that can be used for further API
  /// calls. **Warning**: please note that the leaked token may allow unauthorized
  /// access to other OpenStack services within the current auth scope, so use this
  /// option with caution.
  final pulumi.Input<bool>? setTokenId;

  /// Creates a new [GetAuthScopeArgs].
  /// [name] The name of the scope. This is an arbitrary name which is
  /// [region] The region in which to obtain the V3 Identity client.
  /// [setTokenId] A boolean argument that determines whether to
  const GetAuthScopeArgs({
    required this.name,
    this.region,
    this.setTokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'setTokenId': ?setTokenId,
    };
  }

  factory GetAuthScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthScopeArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      setTokenId: (() { final guardedValue = map['setTokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

