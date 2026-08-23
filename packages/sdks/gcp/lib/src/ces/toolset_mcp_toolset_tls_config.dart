// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_mcp_toolset_tls_config_ca_cert.dart';

class ToolsetMcpToolsetTlsConfig {
  /// Specifies a list of allowed custom CA certificates for HTTPS
  /// verification.
  /// Structure is documented below.
  final pulumi.Input<List<ToolsetMcpToolsetTlsConfigCaCert>> caCerts;

  /// Creates a new [ToolsetMcpToolsetTlsConfig].
  /// [caCerts] Specifies a list of allowed custom CA certificates for HTTPS
  const ToolsetMcpToolsetTlsConfig({
    required this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': pulumi.Input.mapInputValue<List<ToolsetMcpToolsetTlsConfigCaCert>, List<Map<String, dynamic>>>(caCerts, (value) => pulumi.Input.encodeList<ToolsetMcpToolsetTlsConfigCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ToolsetMcpToolsetTlsConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetMcpToolsetTlsConfig(
      caCerts: pulumi.Input.fromValue(pulumi.Input.decodeList<ToolsetMcpToolsetTlsConfigCaCert>(map['caCerts']!, (value) => ToolsetMcpToolsetTlsConfigCaCert.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
