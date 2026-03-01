// ignore_for_file: unused_element, unnecessary_cast


/// The SKU to be applied for this resource
class SkuResponse {
  /// Name of the SKU to be applied
  final String? name;

  /// Creates a new [SkuResponse].
  /// [name] Name of the SKU to be applied
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

