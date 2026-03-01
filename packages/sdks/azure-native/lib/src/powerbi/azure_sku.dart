// ignore_for_file: unused_element, unnecessary_cast


class AzureSku {
  /// SKU name
  final String name;
  /// SKU tier
  final String tier;

  /// Creates a new [AzureSku].
  /// [name] SKU name
  /// [tier] SKU tier
  AzureSku({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory AzureSku.fromMap(Map<String, dynamic> map) {
    return AzureSku(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

