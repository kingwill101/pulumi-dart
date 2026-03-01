// ignore_for_file: unused_element, unnecessary_cast


/// Specification for using a Virtual Network.
class VirtualNetworkProfile {
  /// Resource id of the Virtual Network.
  final String id;
  /// Subnet within the Virtual Network.
  final String? subnet;

  /// Creates a new [VirtualNetworkProfile].
  /// [id] Resource id of the Virtual Network.
  /// [subnet] Subnet within the Virtual Network.
  VirtualNetworkProfile({
    required this.id,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'subnet': ?subnet,
    };
  }

  factory VirtualNetworkProfile.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkProfile(
      id: map['id'] as String,
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
    );
  }
}

