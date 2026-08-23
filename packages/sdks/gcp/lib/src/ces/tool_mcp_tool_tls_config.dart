// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_mcp_tool_tls_config_ca_cert.dart';

class ToolMcpToolTlsConfig {
  /// (Output)
  /// Specifies a list of allowed custom CA certificates for HTTPS
  /// verification.
  /// Structure is documented below.
  final pulumi.Input<List<ToolMcpToolTlsConfigCaCert>>? caCerts;

  /// Creates a new [ToolMcpToolTlsConfig].
  /// [caCerts] (Output)
  const ToolMcpToolTlsConfig({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': ?pulumi.Input.mapOptionalInputValue<List<ToolMcpToolTlsConfigCaCert>, List<Map<String, dynamic>>>(caCerts, (value) => pulumi.Input.encodeList<ToolMcpToolTlsConfigCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ToolMcpToolTlsConfig.fromMap(Map<String, dynamic> map) {
    return ToolMcpToolTlsConfig(
      caCerts: (() { final guardedValue = map['caCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolMcpToolTlsConfigCaCert>(guardedValue, (value) => ToolMcpToolTlsConfigCaCert.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
