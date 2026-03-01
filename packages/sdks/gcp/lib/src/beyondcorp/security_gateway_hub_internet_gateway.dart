// ignore_for_file: unused_element, unnecessary_cast


class SecurityGatewayHubInternetGateway {
  /// (Output)
  /// Output only. List of IP addresses assigned to the Cloud NAT.
  final List<String>? assignedIps;

  /// Creates a new [SecurityGatewayHubInternetGateway].
  /// [assignedIps] (Output)
  SecurityGatewayHubInternetGateway({
    this.assignedIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedIps': ?assignedIps,
    };
  }

  factory SecurityGatewayHubInternetGateway.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayHubInternetGateway(
      assignedIps: map['assignedIps'] == null ? null : (map['assignedIps'] as List).cast<String>(),
    );
  }
}

