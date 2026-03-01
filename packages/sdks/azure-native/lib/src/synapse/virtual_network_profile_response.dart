// ignore_for_file: unused_element, unnecessary_cast


/// Virtual Network Profile
class VirtualNetworkProfileResponse {
  /// Subnet ID used for computes in workspace
  final String? computeSubnetId;

  /// Creates a new [VirtualNetworkProfileResponse].
  /// [computeSubnetId] Subnet ID used for computes in workspace
  VirtualNetworkProfileResponse({
    this.computeSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeSubnetId': ?computeSubnetId,
    };
  }

  factory VirtualNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkProfileResponse(
      computeSubnetId: map['computeSubnetId'] == null ? null : map['computeSubnetId'] as String,
    );
  }
}

