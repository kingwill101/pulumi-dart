// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_open_api_spec_authentication.dart';
import 'tool_open_api_spec_service_directory_config.dart';
import 'tool_open_api_spec_tls_config.dart';

class ToolOpenApiSpec {
  /// Optional. Authentication information required by the API.
  /// Structure is documented below.
  final pulumi.Input<ToolOpenApiSpecAuthentication?>? authentication;
  /// Optional. Service Directory configuration.
  /// Structure is documented below.
  final pulumi.Input<ToolOpenApiSpecServiceDirectoryConfig?>? serviceDirectoryConfig;
  /// Required. The OpenAPI schema specified as a text.
  /// Note: Plays a role in linking the OpenAPI spec with the tool. The `info.title` field in the OpenAPI schema must match the `toolKey` of the tool, otherwise the API will overwrite `info.title` with `toolKey`.
  final pulumi.Input<String> textSchema;
  /// Optional. TLS configuration for the HTTPS verification.
  /// Structure is documented below.
  final pulumi.Input<ToolOpenApiSpecTlsConfig?>? tlsConfig;

  /// Creates a new [ToolOpenApiSpec].
  /// [authentication] Optional. Authentication information required by the API.
  /// [serviceDirectoryConfig] Optional. Service Directory configuration.
  /// [textSchema] Required. The OpenAPI schema specified as a text.
  /// [tlsConfig] Optional. TLS configuration for the HTTPS verification.
  const ToolOpenApiSpec({
    this.authentication,
    this.serviceDirectoryConfig,
    required this.textSchema,
    this.tlsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<ToolOpenApiSpecAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ToolOpenApiSpecServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'textSchema': textSchema,
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<ToolOpenApiSpecTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
    };
  }

  factory ToolOpenApiSpec.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiSpec(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolOpenApiSpecAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolOpenApiSpecServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textSchema: pulumi.Input.fromValue(map['textSchema'] as String),
      tlsConfig: (() { final guardedValue = map['tlsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolOpenApiSpecTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
