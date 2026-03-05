// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNodebalancerVpc.
class GetNodebalancerVpcResult {
  final int id;

  /// A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  final String ipv4Range;
  final int nodebalancerId;

  /// The ID of this configuration's VPC subnet.
  final int subnetId;

  /// The ID of this configuration's VPC.
  final int vpcId;

  /// Creates a new [GetNodebalancerVpcResult].
  /// [id] Required.
  /// [ipv4Range] A CIDR range for the VPC's IPv4 addresses. The NodeBalancer sources IP addresses from this range when routing traffic to the backend VPC nodes.
  /// [nodebalancerId] Required.
  /// [subnetId] The ID of this configuration's VPC subnet.
  /// [vpcId] The ID of this configuration's VPC.
  GetNodebalancerVpcResult({
    required this.id,
    required this.ipv4Range,
    required this.nodebalancerId,
    required this.subnetId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ipv4Range': ipv4Range,
      'nodebalancerId': nodebalancerId,
      'subnetId': subnetId,
      'vpcId': vpcId,
    };
  }

  factory GetNodebalancerVpcResult.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerVpcResult(
      id: map['id'] as int,
      ipv4Range: map['ipv4Range'] as String,
      nodebalancerId: map['nodebalancerId'] as int,
      subnetId: map['subnetId'] as int,
      vpcId: map['vpcId'] as int,
    );
  }
}
