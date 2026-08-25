// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayHubInternetGateway {
  /// (Output)
  /// Output only. List of IP addresses assigned to the Cloud NAT.
  final pulumi.Input<List<String>?>? assignedIps;

  /// Creates a new [SecurityGatewayHubInternetGateway].
  /// [assignedIps] (Output)
  const SecurityGatewayHubInternetGateway({
    this.assignedIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedIps': ?assignedIps,
    };
  }

  factory SecurityGatewayHubInternetGateway.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayHubInternetGateway(
      assignedIps: (() { final guardedValue = map['assignedIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
