// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDependencyResponse {
  /// The domain name of the dependency.
  final pulumi.Input<String> domainName;

  /// The port of this endpoint.
  final pulumi.Input<double>? port;

  /// Creates a new [EndpointDependencyResponse].
  /// [domainName] The domain name of the dependency.
  /// [port] The port of this endpoint.
  EndpointDependencyResponse({required this.domainName, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domainName': domainName, 'port': ?port};
  }

  factory EndpointDependencyResponse.fromMap(Map<String, dynamic> map) {
    return EndpointDependencyResponse(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
