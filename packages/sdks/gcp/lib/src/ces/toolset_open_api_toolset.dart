// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_open_api_toolset_api_authentication.dart';
import 'toolset_open_api_toolset_service_directory_config.dart';
import 'toolset_open_api_toolset_tls_config.dart';

class ToolsetOpenApiToolset {
  /// Authentication information required for API calls.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolsetApiAuthentication>? apiAuthentication;
  /// If true, the agent will ignore unknown fields in the API response for all
  /// operations defined in the OpenAPI schema.
  final pulumi.Input<bool>? ignoreUnknownFields;
  /// The OpenAPI schema of the toolset.
  final pulumi.Input<String> openApiSchema;
  /// Configuration for tools using Service Directory.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolsetServiceDirectoryConfig>? serviceDirectoryConfig;
  /// The TLS configuration.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolsetTlsConfig>? tlsConfig;
  /// (Output)
  /// The server URL of the Open API schema.
  /// This field is only set in toolsets in the environment dependencies
  /// during the export process if the schema contains a server url.
  /// During the import process, if this url is present in the environment dependencies
  /// and the schema has the $env_var placeholder,
  /// it will replace the placeholder in the schema.
  final pulumi.Input<String>? url;

  /// Creates a new [ToolsetOpenApiToolset].
  /// [apiAuthentication] Authentication information required for API calls.
  /// [ignoreUnknownFields] If true, the agent will ignore unknown fields in the API response for all
  /// [openApiSchema] The OpenAPI schema of the toolset.
  /// [serviceDirectoryConfig] Configuration for tools using Service Directory.
  /// [tlsConfig] The TLS configuration.
  /// [url] (Output)
  const ToolsetOpenApiToolset({
    this.apiAuthentication,
    this.ignoreUnknownFields,
    required this.openApiSchema,
    this.serviceDirectoryConfig,
    this.tlsConfig,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiAuthentication': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolsetApiAuthentication, Map<String, dynamic>>(apiAuthentication, (value) => value.toMap()),
      'ignoreUnknownFields': ?ignoreUnknownFields,
      'openApiSchema': openApiSchema,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolsetServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolsetTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory ToolsetOpenApiToolset.fromMap(Map<String, dynamic> map) {
    return ToolsetOpenApiToolset(
      apiAuthentication: (() { final guardedValue = map['apiAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetOpenApiToolsetApiAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreUnknownFields: (() { final guardedValue = map['ignoreUnknownFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      openApiSchema: pulumi.Input.fromValue(map['openApiSchema'] as String),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetOpenApiToolsetServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsConfig: (() { final guardedValue = map['tlsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetOpenApiToolsetTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
