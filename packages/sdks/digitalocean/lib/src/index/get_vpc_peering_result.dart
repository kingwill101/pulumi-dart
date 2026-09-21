// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVpcPeering.
class GetVpcPeeringResult {
  /// The date and time of when the VPC Peering was created.
  final String? createdAt;
  /// The unique identifier for the VPC Peering.
  final String? id;
  /// The name of the VPC Peering.
  final String? name;
  /// The status of the VPC Peering.
  final String? status;
  /// The list of VPC IDs involved in the peering.
  final List<String>? vpcIds;

  /// Creates a new [GetVpcPeeringResult].
  /// [createdAt] The date and time of when the VPC Peering was created.
  /// [id] The unique identifier for the VPC Peering.
  /// [name] The name of the VPC Peering.
  /// [status] The status of the VPC Peering.
  /// [vpcIds] The list of VPC IDs involved in the peering.
  const GetVpcPeeringResult({
    this.createdAt,
    this.id,
    this.name,
    this.status,
    this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'id': ?id,
      'name': ?name,
      'status': ?status,
      'vpcIds': ?vpcIds,
    };
  }

  factory GetVpcPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
