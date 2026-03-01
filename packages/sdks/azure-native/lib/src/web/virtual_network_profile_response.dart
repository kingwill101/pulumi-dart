// ignore_for_file: unused_element, unnecessary_cast


/// Specification for using a Virtual Network.
class VirtualNetworkProfileResponse {
  /// Resource id of the Virtual Network.
  final String id;
  /// Name of the Virtual Network (read-only).
  final String name;
  /// Subnet within the Virtual Network.
  final String? subnet;
  /// Resource type of the Virtual Network (read-only).
  final String type;

  /// Creates a new [VirtualNetworkProfileResponse].
  /// [id] Resource id of the Virtual Network.
  /// [name] Name of the Virtual Network (read-only).
  /// [subnet] Subnet within the Virtual Network.
  /// [type] Resource type of the Virtual Network (read-only).
  VirtualNetworkProfileResponse({
    required this.id,
    required this.name,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subnet': ?subnet,
      'type': type,
    };
  }

  factory VirtualNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkProfileResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      subnet: map['subnet'] == null ? null : map['subnet'] as String,
      type: map['type'] as String,
    );
  }
}

