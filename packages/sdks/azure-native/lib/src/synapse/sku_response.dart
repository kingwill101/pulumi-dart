// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL pool SKU
class SkuResponse {
  /// If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  final pulumi.Input<int>? capacity;

  /// The SKU name
  final pulumi.Input<String>? name;

  /// The service tier
  final pulumi.Input<String>? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  /// [name] The SKU name
  /// [tier] The service tier
  SkuResponse({this.capacity, this.name, this.tier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
