// ignore_for_file: unused_element, unnecessary_cast


/// The sku of this Bastion Host.
class SkuResponse {
  /// The name of the sku of this Bastion Host.
  final String? name;

  /// Creates a new [SkuResponse].
  /// [name] The name of the sku of this Bastion Host.
  SkuResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

