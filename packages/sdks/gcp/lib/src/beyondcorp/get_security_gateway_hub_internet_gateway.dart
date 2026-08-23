// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityGatewayHubInternetGateway {
  /// Output only. List of IP addresses assigned to the Cloud NAT.
  final pulumi.Input<List<String>> assignedIps;

  /// Creates a new [GetSecurityGatewayHubInternetGateway].
  /// [assignedIps] Output only. List of IP addresses assigned to the Cloud NAT.
  const GetSecurityGatewayHubInternetGateway({
    required this.assignedIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedIps': assignedIps,
    };
  }

  factory GetSecurityGatewayHubInternetGateway.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayHubInternetGateway(
      assignedIps: pulumi.Input.fromValue((map['assignedIps'] as List).cast<String>()),
    );
  }
}
