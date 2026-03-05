// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginInstanceAuthConfigApiKeyConfigApiKey {
  /// The resource name of the secret version in the format,
  /// format as: `projects/*/secrets/*/versions/*`.
  ///
  /// &lt;a name="nested_auth_config_oauth2_client_credentials_config"&gt;&lt;/a&gt;The `oauth2_client_credentials_config` block supports:
  final pulumi.Input<String> secretVersion;

  /// Creates a new [PluginInstanceAuthConfigApiKeyConfigApiKey].
  /// [secretVersion] The resource name of the secret version in the format,
  PluginInstanceAuthConfigApiKeyConfigApiKey({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory PluginInstanceAuthConfigApiKeyConfigApiKey.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAuthConfigApiKeyConfigApiKey(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}

