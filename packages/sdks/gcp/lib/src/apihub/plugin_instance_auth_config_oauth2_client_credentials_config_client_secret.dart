// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret {
  /// The resource name of the secret version in the format,
  /// format as: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret].
  /// [secretVersion] The resource name of the secret version in the format,
  PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret.fromMap(
    Map<String, dynamic> map,
  ) {
    return PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
