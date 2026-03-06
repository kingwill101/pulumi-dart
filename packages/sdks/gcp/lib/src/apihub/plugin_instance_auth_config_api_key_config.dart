// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_auth_config_api_key_config_api_key.dart';

class PluginInstanceAuthConfigApiKeyConfig {
  /// Secret provides a reference to entries in Secret Manager.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceAuthConfigApiKeyConfigApiKey> apiKey;
  /// The location of the API key.
  /// The default value is QUERY.
  /// Possible values:
  /// HTTP_ELEMENT_LOCATION_UNSPECIFIED
  /// QUERY
  /// HEADER
  /// PATH
  /// BODY
  /// COOKIE
  final pulumi.Input<String> httpElementLocation;
  /// The parameter name of the API key.
  /// E.g. If the API request is "https://example.com/act?api_key=",
  /// "api_key" would be the parameter name.
  final pulumi.Input<String> name;

  /// Creates a new [PluginInstanceAuthConfigApiKeyConfig].
  /// [apiKey] Secret provides a reference to entries in Secret Manager.
  /// [httpElementLocation] The location of the API key.
  /// [name] The parameter name of the API key.
  const PluginInstanceAuthConfigApiKeyConfig({
    required this.apiKey,
    required this.httpElementLocation,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': pulumi.Input.mapInputValue<PluginInstanceAuthConfigApiKeyConfigApiKey, Map<String, dynamic>>(apiKey, (value) => value.toMap()),
      'httpElementLocation': httpElementLocation,
      'name': name,
    };
  }

  factory PluginInstanceAuthConfigApiKeyConfig.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAuthConfigApiKeyConfig(
      apiKey: pulumi.Input.fromValue(PluginInstanceAuthConfigApiKeyConfigApiKey.fromMap((map['apiKey']! as Map).cast<String, dynamic>())),
      httpElementLocation: pulumi.Input.fromValue(map['httpElementLocation'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

