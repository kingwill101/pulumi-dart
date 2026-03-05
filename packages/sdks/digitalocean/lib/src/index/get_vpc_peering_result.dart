// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVpcPeering.
class GetVpcPeeringResult {
  /// The date and time of when the VPC Peering was created.
  final String createdAt;
  /// The unique identifier for the VPC Peering.
  final String id;
  /// The name of the VPC Peering.
  final String name;
  /// The status of the VPC Peering.
  final String status;
  /// The list of VPC IDs involved in the peering.
  final List<String> vpcIds;

  /// Creates a new [GetVpcPeeringResult].
  /// [createdAt] The date and time of when the VPC Peering was created.
  /// [id] The unique identifier for the VPC Peering.
  /// [name] The name of the VPC Peering.
  /// [status] The status of the VPC Peering.
  /// [vpcIds] The list of VPC IDs involved in the peering.
  GetVpcPeeringResult({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.status,
    required this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'status': status,
      'vpcIds': vpcIds,
    };
  }

  factory GetVpcPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringResult(
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
      vpcIds: (map['vpcIds'] as List).cast<String>(),
    );
  }
}

