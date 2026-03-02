// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_open_api_spec_authentication.dart';
import 'cx_tool_open_api_spec_service_directory_config.dart';
import 'cx_tool_open_api_spec_tls_config.dart';

class CxToolOpenApiSpec {
  /// Optional. Authentication information required by the API.
  /// Structure is documented below.
  final pulumi.Input<CxToolOpenApiSpecAuthentication>? authentication;
  /// Optional. Service Directory configuration.
  /// Structure is documented below.
  final pulumi.Input<CxToolOpenApiSpecServiceDirectoryConfig>? serviceDirectoryConfig;
  /// The OpenAPI schema specified as a text.
  /// This field is part of a union field `schema`: only one of `textSchema` may be set.
  final pulumi.Input<String> textSchema;
  /// Optional. TLS configuration for the HTTPS verification.
  /// Structure is documented below.
  final pulumi.Input<CxToolOpenApiSpecTlsConfig>? tlsConfig;

  /// Creates a new [CxToolOpenApiSpec].
  /// [authentication] Optional. Authentication information required by the API.
  /// [serviceDirectoryConfig] Optional. Service Directory configuration.
  /// [textSchema] The OpenAPI schema specified as a text.
  /// [tlsConfig] Optional. TLS configuration for the HTTPS verification.
  CxToolOpenApiSpec({
    this.authentication,
    this.serviceDirectoryConfig,
    required this.textSchema,
    this.tlsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<CxToolOpenApiSpecAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<CxToolOpenApiSpecServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'textSchema': textSchema,
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<CxToolOpenApiSpecTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
    };
  }

  factory CxToolOpenApiSpec.fromMap(Map<String, dynamic> map) {
    return CxToolOpenApiSpec(
      authentication: map['authentication'] == null ? null : (CxToolOpenApiSpecAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())).input(),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null ? null : (CxToolOpenApiSpecServiceDirectoryConfig.fromMap((map['serviceDirectoryConfig']! as Map).cast<String, dynamic>())).input(),
      textSchema: (map['textSchema'] as String).input(),
      tlsConfig: map['tlsConfig'] == null ? null : (CxToolOpenApiSpecTlsConfig.fromMap((map['tlsConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

