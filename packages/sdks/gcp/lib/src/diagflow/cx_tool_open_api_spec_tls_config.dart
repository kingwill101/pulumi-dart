// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_open_api_spec_tls_config_ca_cert.dart';

class CxToolOpenApiSpecTlsConfig {
  /// Specifies a list of allowed custom CA certificates for HTTPS verification.
  /// Structure is documented below.
  final pulumi.Input<List<CxToolOpenApiSpecTlsConfigCaCert>> caCerts;

  /// Creates a new [CxToolOpenApiSpecTlsConfig].
  /// [caCerts] Specifies a list of allowed custom CA certificates for HTTPS verification.
  CxToolOpenApiSpecTlsConfig({
    required this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': pulumi.Input.mapInputValue<List<CxToolOpenApiSpecTlsConfigCaCert>, List<Map<String, dynamic>>>(caCerts, (value) => pulumi.Input.encodeList<CxToolOpenApiSpecTlsConfigCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CxToolOpenApiSpecTlsConfig.fromMap(Map<String, dynamic> map) {
    return CxToolOpenApiSpecTlsConfig(
      caCerts: (pulumi.Input.decodeList<CxToolOpenApiSpecTlsConfigCaCert>(map['caCerts'], (value) => CxToolOpenApiSpecTlsConfigCaCert.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

