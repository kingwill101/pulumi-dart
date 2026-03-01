// ignore_for_file: unused_element, unnecessary_cast


/// The SKU of the storage account.
class SkuResponse {
  /// The SKU name. Required for account creation; optional for update. Note that in older versions, SKU name was called accountType.
  final String name;
  /// The SKU tier. This is based on the SKU name.
  final String tier;

  /// Creates a new [SkuResponse].
  /// [name] The SKU name. Required for account creation; optional for update. Note that in older versions, SKU name was called accountType.
  /// [tier] The SKU tier. This is based on the SKU name.
  SkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

