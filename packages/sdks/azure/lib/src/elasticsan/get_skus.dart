// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSkus {
  /// The name of this Elastic SAN.
  final pulumi.Input<String> name;
  /// The SKU tier.
  final pulumi.Input<String> tier;

  /// Creates a new [GetSkus].
  /// [name] The name of this Elastic SAN.
  /// [tier] The SKU tier.
  GetSkus({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory GetSkus.fromMap(Map<String, dynamic> map) {
    return GetSkus(
      name: (map['name'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

