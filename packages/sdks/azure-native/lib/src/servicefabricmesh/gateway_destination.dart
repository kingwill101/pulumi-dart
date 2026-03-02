// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes destination endpoint for routing traffic.
class GatewayDestination {
  /// Name of the service fabric Mesh application.
  final pulumi.Input<String> applicationName;
  /// name of the endpoint in the service.
  final pulumi.Input<String> endpointName;
  /// service that contains the endpoint.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GatewayDestination].
  /// [applicationName] Name of the service fabric Mesh application.
  /// [endpointName] name of the endpoint in the service.
  /// [serviceName] service that contains the endpoint.
  GatewayDestination({
    required this.applicationName,
    required this.endpointName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'endpointName': endpointName,
      'serviceName': serviceName,
    };
  }

  factory GatewayDestination.fromMap(Map<String, dynamic> map) {
    return GatewayDestination(
      applicationName: (map['applicationName'] as String).input(),
      endpointName: (map['endpointName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

