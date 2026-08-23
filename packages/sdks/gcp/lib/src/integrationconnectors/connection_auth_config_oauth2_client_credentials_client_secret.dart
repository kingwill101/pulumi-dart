// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthConfigOauth2ClientCredentialsClientSecret {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionAuthConfigOauth2ClientCredentialsClientSecret].
  /// [secretVersion] The resource name of the secret version in the format,
  const ConnectionAuthConfigOauth2ClientCredentialsClientSecret({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionAuthConfigOauth2ClientCredentialsClientSecret.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2ClientCredentialsClientSecret(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
