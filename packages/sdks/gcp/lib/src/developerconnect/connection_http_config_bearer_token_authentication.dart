// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionHttpConfigBearerTokenAuthentication {
  /// The token SecretManager secret version to authenticate as.
  final pulumi.Input<String?>? tokenSecretVersion;

  /// Creates a new [ConnectionHttpConfigBearerTokenAuthentication].
  /// [tokenSecretVersion] The token SecretManager secret version to authenticate as.
  const ConnectionHttpConfigBearerTokenAuthentication({
    this.tokenSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenSecretVersion': ?tokenSecretVersion,
    };
  }

  factory ConnectionHttpConfigBearerTokenAuthentication.fromMap(Map<String, dynamic> map) {
    return ConnectionHttpConfigBearerTokenAuthentication(
      tokenSecretVersion: (() { final guardedValue = map['tokenSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
