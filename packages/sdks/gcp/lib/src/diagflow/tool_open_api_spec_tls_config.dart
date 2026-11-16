// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_open_api_spec_tls_config_ca_cert.dart';

class ToolOpenApiSpecTlsConfig {
  /// Specifies a list of allowed custom CA certificates for HTTPS verification.
  /// Structure is documented below.
  final pulumi.Input<List<ToolOpenApiSpecTlsConfigCaCert>> caCerts;

  /// Creates a new [ToolOpenApiSpecTlsConfig].
  /// [caCerts] Specifies a list of allowed custom CA certificates for HTTPS verification.
  const ToolOpenApiSpecTlsConfig({
    required this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': pulumi.Input.mapInputValue<List<ToolOpenApiSpecTlsConfigCaCert>, List<Map<String, dynamic>>>(caCerts, (value) => pulumi.Input.encodeList<ToolOpenApiSpecTlsConfigCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ToolOpenApiSpecTlsConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiSpecTlsConfig(
      caCerts: pulumi.Input.fromValue(pulumi.Input.decodeList<ToolOpenApiSpecTlsConfigCaCert>(map['caCerts']!, (value) => ToolOpenApiSpecTlsConfigCaCert.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
