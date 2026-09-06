// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credentials to access repository.
class RepositoryAccess {
  /// OAuth ClientId. Required when `kind` is `OAuth`
  final pulumi.Input<String?>? clientId;
  /// OAuth Code. Required when `kind` is `OAuth`
  final pulumi.Input<String?>? code;
  /// Application installation ID. Required when `kind` is `App`. Supported by `GitHub` only.
  final pulumi.Input<String?>? installationId;
  /// The kind of repository access credentials
  final pulumi.Input<dynamic> kind;
  /// OAuth State. Required when `kind` is `OAuth`
  final pulumi.Input<String?>? state;
  /// Personal Access Token. Required when `kind` is `PAT`
  final pulumi.Input<String?>? token;

  /// Creates a new [RepositoryAccess].
  /// [clientId] OAuth ClientId. Required when `kind` is `OAuth`
  /// [code] OAuth Code. Required when `kind` is `OAuth`
  /// [installationId] Application installation ID. Required when `kind` is `App`. Supported by `GitHub` only.
  /// [kind] The kind of repository access credentials
  /// [state] OAuth State. Required when `kind` is `OAuth`
  /// [token] Personal Access Token. Required when `kind` is `PAT`
  const RepositoryAccess({
    this.clientId,
    this.code,
    this.installationId,
    required this.kind,
    this.state,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'code': ?code,
      'installationId': ?installationId,
      'kind': kind,
      'state': ?state,
      'token': ?token,
    };
  }

  factory RepositoryAccess.fromMap(Map<String, dynamic> map) {
    return RepositoryAccess(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installationId: (() { final guardedValue = map['installationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind']),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
