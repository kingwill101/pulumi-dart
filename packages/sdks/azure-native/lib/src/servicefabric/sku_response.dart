// ignore_for_file: unused_element, unnecessary_cast


/// Service Fabric managed cluster Sku definition
class SkuResponse {
  /// Sku Name.
  final String name;

  /// Creates a new [SkuResponse].
  /// [name] Sku Name.
  SkuResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] as String,
    );
  }
}

