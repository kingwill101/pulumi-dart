// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride {
  /// Contains uri path fragment where HTTP request is sent.
  final pulumi.Input<String> path;

  /// Creates a new [GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride].
  /// [path] Contains uri path fragment where HTTP request is sent.
  GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride(
      path: (map['path'] as String).input(),
    );
  }
}

