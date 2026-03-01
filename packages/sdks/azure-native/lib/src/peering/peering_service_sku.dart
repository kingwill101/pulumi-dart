// ignore_for_file: unused_element, unnecessary_cast


/// The SKU that defines the type of the peering service.
class PeeringServiceSku {
  /// The name of the peering service SKU.
  final String? name;

  /// Creates a new [PeeringServiceSku].
  /// [name] The name of the peering service SKU.
  PeeringServiceSku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PeeringServiceSku.fromMap(Map<String, dynamic> map) {
    return PeeringServiceSku(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

