// ignore_for_file: unused_element, unnecessary_cast


/// Virtual Hub identifier.
class VirtualHubId {
  /// The resource URI for the Virtual Hub where the ExpressRoute gateway is or will be deployed. The Virtual Hub resource and the ExpressRoute gateway resource reside in the same subscription.
  final String? id;

  /// Creates a new [VirtualHubId].
  /// [id] The resource URI for the Virtual Hub where the ExpressRoute gateway is or will be deployed. The Virtual Hub resource and the ExpressRoute gateway resource reside in the same subscription.
  VirtualHubId({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualHubId.fromMap(Map<String, dynamic> map) {
    return VirtualHubId(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

