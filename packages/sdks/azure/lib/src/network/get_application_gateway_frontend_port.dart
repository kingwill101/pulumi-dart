// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayFrontendPort {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// Custom port which is used for probing the backend servers.
  final pulumi.Input<int> port;

  /// Creates a new [GetApplicationGatewayFrontendPort].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [port] Custom port which is used for probing the backend servers.
  GetApplicationGatewayFrontendPort({
    required this.id,
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'port': port,
    };
  }

  factory GetApplicationGatewayFrontendPort.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayFrontendPort(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

