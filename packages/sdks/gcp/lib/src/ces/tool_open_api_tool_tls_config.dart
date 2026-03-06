// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_open_api_tool_tls_config_ca_cert.dart';

class ToolOpenApiToolTlsConfig {
  /// (Output)
  /// Specifies a list of allowed custom CA certificates for HTTPS
  /// verification.
  /// Structure is documented below.
  final pulumi.Input<List<ToolOpenApiToolTlsConfigCaCert>>? caCerts;

  /// Creates a new [ToolOpenApiToolTlsConfig].
  /// [caCerts] (Output)
  const ToolOpenApiToolTlsConfig({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': ?pulumi.Input.mapOptionalInputValue<List<ToolOpenApiToolTlsConfigCaCert>, List<Map<String, dynamic>>>(caCerts, (value) => pulumi.Input.encodeList<ToolOpenApiToolTlsConfigCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ToolOpenApiToolTlsConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolTlsConfig(
      caCerts: (() { final guardedValue = map['caCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolOpenApiToolTlsConfigCaCert>(guardedValue, (value) => ToolOpenApiToolTlsConfigCaCert.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

