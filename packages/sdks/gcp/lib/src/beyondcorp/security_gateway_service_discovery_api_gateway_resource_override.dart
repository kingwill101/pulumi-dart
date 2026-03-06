// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayServiceDiscoveryApiGatewayResourceOverride {
  /// Contains uri path fragment where HTTP request is sent.
  final pulumi.Input<String>? path;

  /// Creates a new [SecurityGatewayServiceDiscoveryApiGatewayResourceOverride].
  /// [path] Contains uri path fragment where HTTP request is sent.
  const SecurityGatewayServiceDiscoveryApiGatewayResourceOverride({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory SecurityGatewayServiceDiscoveryApiGatewayResourceOverride.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayServiceDiscoveryApiGatewayResourceOverride(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

