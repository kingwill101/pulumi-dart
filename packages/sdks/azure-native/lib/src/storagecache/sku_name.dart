// ignore_for_file: unused_element, unnecessary_cast


/// SKU for the resource.
class SkuName {
  /// SKU name for this resource.
  final String? name;

  /// Creates a new [SkuName].
  /// [name] SKU name for this resource.
  SkuName({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SkuName.fromMap(Map<String, dynamic> map) {
    return SkuName(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

