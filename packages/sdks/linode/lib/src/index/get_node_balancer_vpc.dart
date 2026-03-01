// ignore_for_file: unused_element, unnecessary_cast


class GetNodeBalancerVpc {
  /// A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  final String ipv4Range;
  /// The ID of a subnet to assign to this NodeBalancer.
  final int subnetId;

  /// Creates a new [GetNodeBalancerVpc].
  /// [ipv4Range] A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  /// [subnetId] The ID of a subnet to assign to this NodeBalancer.
  GetNodeBalancerVpc({
    required this.ipv4Range,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Range': ipv4Range,
      'subnetId': subnetId,
    };
  }

  factory GetNodeBalancerVpc.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerVpc(
      ipv4Range: map['ipv4Range'] as String,
      subnetId: map['subnetId'] as int,
    );
  }
}

