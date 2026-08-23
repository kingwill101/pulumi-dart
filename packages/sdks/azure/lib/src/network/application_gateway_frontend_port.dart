// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayFrontendPort {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The name of the Frontend Port.
  final pulumi.Input<String> name;
  /// The port used for this Frontend Port.
  final pulumi.Input<int> port;

  /// Creates a new [ApplicationGatewayFrontendPort].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of the Frontend Port.
  /// [port] The port used for this Frontend Port.
  const ApplicationGatewayFrontendPort({
    this.id,
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'port': port,
    };
  }

  factory ApplicationGatewayFrontendPort.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendPort(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
