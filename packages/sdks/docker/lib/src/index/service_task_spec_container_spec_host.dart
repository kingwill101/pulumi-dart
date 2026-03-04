// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecContainerSpecHost {
  /// The name of the host
  final pulumi.Input<String> host;

  /// The ip of the host
  final pulumi.Input<String> ip;

  /// Creates a new [ServiceTaskSpecContainerSpecHost].
  /// [host] The name of the host
  /// [ip] The ip of the host
  ServiceTaskSpecContainerSpecHost({required this.host, required this.ip});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'host': host, 'ip': ip};
  }

  factory ServiceTaskSpecContainerSpecHost.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecHost(
      host: pulumi.Input.fromValue(map['host'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
