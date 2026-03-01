// ignore_for_file: unused_element, unnecessary_cast


/// Service Fabric managed cluster Sku definition
class Sku {
  /// Sku Name.
  final String name;

  /// Creates a new [Sku].
  /// [name] Sku Name.
  Sku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: map['name'] as String,
    );
  }
}

