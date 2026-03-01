// ignore_for_file: unused_element, unnecessary_cast


/// Virtual Hub identifier.
class VirtualHubIdResponse {
  /// The resource URI for the Virtual Hub where the ExpressRoute gateway is or will be deployed. The Virtual Hub resource and the ExpressRoute gateway resource reside in the same subscription.
  final String? id;

  /// Creates a new [VirtualHubIdResponse].
  /// [id] The resource URI for the Virtual Hub where the ExpressRoute gateway is or will be deployed. The Virtual Hub resource and the ExpressRoute gateway resource reside in the same subscription.
  VirtualHubIdResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualHubIdResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHubIdResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

