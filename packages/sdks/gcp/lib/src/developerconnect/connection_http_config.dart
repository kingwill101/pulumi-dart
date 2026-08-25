// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_http_config_basic_authentication.dart';
import 'connection_http_config_bearer_token_authentication.dart';
import 'connection_http_config_service_directory_config.dart';

class ConnectionHttpConfig {
  /// Basic authentication with username and password.
  /// Structure is documented below.
  final pulumi.Input<ConnectionHttpConfigBasicAuthentication?>? basicAuthentication;
  /// Bearer token authentication with a token.
  /// Structure is documented below.
  final pulumi.Input<ConnectionHttpConfigBearerTokenAuthentication?>? bearerTokenAuthentication;
  /// The service provider's https endpoint.
  final pulumi.Input<String> hostUri;
  /// ServiceDirectoryConfig represents Service Directory configuration for a
  /// connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionHttpConfigServiceDirectoryConfig?>? serviceDirectoryConfig;
  /// The SSL certificate to use for requests to the HTTP service provider.
  final pulumi.Input<String?>? sslCaCertificate;

  /// Creates a new [ConnectionHttpConfig].
  /// [basicAuthentication] Basic authentication with username and password.
  /// [bearerTokenAuthentication] Bearer token authentication with a token.
  /// [hostUri] The service provider's https endpoint.
  /// [serviceDirectoryConfig] ServiceDirectoryConfig represents Service Directory configuration for a
  /// [sslCaCertificate] The SSL certificate to use for requests to the HTTP service provider.
  const ConnectionHttpConfig({
    this.basicAuthentication,
    this.bearerTokenAuthentication,
    required this.hostUri,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuthentication': ?pulumi.Input.mapOptionalInputValue<ConnectionHttpConfigBasicAuthentication, Map<String, dynamic>>(basicAuthentication, (value) => value.toMap()),
      'bearerTokenAuthentication': ?pulumi.Input.mapOptionalInputValue<ConnectionHttpConfigBearerTokenAuthentication, Map<String, dynamic>>(bearerTokenAuthentication, (value) => value.toMap()),
      'hostUri': hostUri,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionHttpConfigServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCaCertificate': ?sslCaCertificate,
    };
  }

  factory ConnectionHttpConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionHttpConfig(
      basicAuthentication: (() { final guardedValue = map['basicAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionHttpConfigBasicAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bearerTokenAuthentication: (() { final guardedValue = map['bearerTokenAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionHttpConfigBearerTokenAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostUri: pulumi.Input.fromValue(map['hostUri'] as String),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionHttpConfigServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslCaCertificate: (() { final guardedValue = map['sslCaCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
