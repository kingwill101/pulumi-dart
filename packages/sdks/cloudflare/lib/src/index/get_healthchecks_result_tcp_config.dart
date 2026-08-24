// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHealthchecksResultTcpConfig {
  /// The TCP connection method to use for the health check.
  /// Available values: "connectionEstablished".
  final pulumi.Input<String> method;
  /// Port number to connect to for the health check. Defaults to 80.
  final pulumi.Input<int> port;

  /// Creates a new [GetHealthchecksResultTcpConfig].
  /// [method] The TCP connection method to use for the health check.
  /// [port] Port number to connect to for the health check. Defaults to 80.
  const GetHealthchecksResultTcpConfig({
    required this.method,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'port': port,
    };
  }

  factory GetHealthchecksResultTcpConfig.fromMap(Map<String, dynamic> map) {
    return GetHealthchecksResultTcpConfig(
      method: pulumi.Input.fromValue(map['method'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
