// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_auth_config_oauth2_client_credentials_config_client_secret.dart';

class PluginInstanceAuthConfigOauth2ClientCredentialsConfig {
  /// The client identifier.
  final pulumi.Input<String> clientId;
  /// Secret provides a reference to entries in Secret Manager.
  final pulumi.Input<PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret> clientSecret;

  /// Creates a new [PluginInstanceAuthConfigOauth2ClientCredentialsConfig].
  /// [clientId] The client identifier.
  /// [clientSecret] Secret provides a reference to entries in Secret Manager.
  const PluginInstanceAuthConfigOauth2ClientCredentialsConfig({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': pulumi.Input.mapInputValue<PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
    };
  }

  factory PluginInstanceAuthConfigOauth2ClientCredentialsConfig.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAuthConfigOauth2ClientCredentialsConfig(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret.fromMap((map['clientSecret']! as Map).cast<String, dynamic>())),
    );
  }
}
