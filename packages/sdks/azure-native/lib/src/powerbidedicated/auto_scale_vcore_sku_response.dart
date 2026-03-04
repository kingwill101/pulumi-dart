// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the SKU name and Azure pricing tier for auto scale v-core resource.
class AutoScaleVCoreSkuResponse {
  /// The capacity of an auto scale v-core resource.
  final pulumi.Input<int>? capacity;

  /// Name of the SKU level.
  final pulumi.Input<String> name;

  /// The name of the Azure pricing tier to which the SKU applies.
  final pulumi.Input<String>? tier;

  /// Creates a new [AutoScaleVCoreSkuResponse].
  /// [capacity] The capacity of an auto scale v-core resource.
  /// [name] Name of the SKU level.
  /// [tier] The name of the Azure pricing tier to which the SKU applies.
  AutoScaleVCoreSkuResponse({this.capacity, required this.name, this.tier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'tier': ?tier,
    };
  }

  factory AutoScaleVCoreSkuResponse.fromMap(Map<String, dynamic> map) {
    return AutoScaleVCoreSkuResponse(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
