// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU of the storage account.
class SkuResponse {
  /// The SKU name. Required for account creation; optional for update. Note that in older versions, SKU name was called accountType.
  final pulumi.Input<String> name;
  /// The SKU tier. This is based on the SKU name.
  final pulumi.Input<String> tier;

  /// Creates a new [SkuResponse].
  /// [name] The SKU name. Required for account creation; optional for update. Note that in older versions, SKU name was called accountType.
  /// [tier] The SKU tier. This is based on the SKU name.
  const SkuResponse({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

