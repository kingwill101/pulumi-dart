// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer {
  /// The name or address of a host.
  final pulumi.Input<String> host;
  /// The port of an endpoint usually specified for a connection.
  final pulumi.Input<int>? port;
  /// The private IP address of the connection's endpoint in the customer's VCN,
  /// typically a database endpoint or a big data endpoint (e.g. Kafka bootstrap
  /// server). In case the privateIp is provided, the subnetId must also be
  /// provided. In case the privateIp (and the subnetId) is not provided it is
  /// assumed the datasource is publicly accessible. In case the connection is
  /// accessible only privately, the lack of privateIp will result in not being
  /// able to access the connection.
  final pulumi.Input<String>? privateIpAddress;

  /// Creates a new [GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer].
  /// [host] The name or address of a host.
  /// [port] The port of an endpoint usually specified for a connection.
  /// [privateIpAddress] The private IP address of the connection's endpoint in the customer's VCN,
  const GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer({
    required this.host,
    this.port,
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': ?port,
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer(
      host: pulumi.Input.fromValue(map['host'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
