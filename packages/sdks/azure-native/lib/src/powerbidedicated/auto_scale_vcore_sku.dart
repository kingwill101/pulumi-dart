// ignore_for_file: unused_element, unnecessary_cast


/// Represents the SKU name and Azure pricing tier for auto scale v-core resource.
class AutoScaleVCoreSku {
  /// The capacity of an auto scale v-core resource.
  final int? capacity;
  /// Name of the SKU level.
  final String name;
  /// The name of the Azure pricing tier to which the SKU applies.
  final String? tier;

  /// Creates a new [AutoScaleVCoreSku].
  /// [capacity] The capacity of an auto scale v-core resource.
  /// [name] Name of the SKU level.
  /// [tier] The name of the Azure pricing tier to which the SKU applies.
  AutoScaleVCoreSku({
    this.capacity,
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'tier': ?tier,
    };
  }

  factory AutoScaleVCoreSku.fromMap(Map<String, dynamic> map) {
    return AutoScaleVCoreSku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

