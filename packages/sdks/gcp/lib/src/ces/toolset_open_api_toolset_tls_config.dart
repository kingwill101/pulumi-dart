// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_open_api_toolset_tls_config_ca_cert.dart';

class ToolsetOpenApiToolsetTlsConfig {
  /// Specifies a list of allowed custom CA certificates for HTTPS
  /// verification.
  /// Structure is documented below.
  final pulumi.Input<List<ToolsetOpenApiToolsetTlsConfigCaCert>> caCerts;

  /// Creates a new [ToolsetOpenApiToolsetTlsConfig].
  /// [caCerts] Specifies a list of allowed custom CA certificates for HTTPS
  ToolsetOpenApiToolsetTlsConfig({
    required this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': pulumi.Input.mapInputValue<List<ToolsetOpenApiToolsetTlsConfigCaCert>, List<Map<String, dynamic>>>(caCerts, (value) => pulumi.Input.encodeList<ToolsetOpenApiToolsetTlsConfigCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ToolsetOpenApiToolsetTlsConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetTlsConfig(
      caCerts: (pulumi.Input.decodeList<ToolsetOpenApiToolsetTlsConfigCaCert>(map['caCerts'], (value) => ToolsetOpenApiToolsetTlsConfigCaCert.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

