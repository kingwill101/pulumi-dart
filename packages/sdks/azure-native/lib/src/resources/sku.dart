// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU for the resource.
class Sku {
  /// The SKU capacity.
  final pulumi.Input<int>? capacity;

  /// The SKU family.
  final pulumi.Input<String>? family;

  /// The SKU model.
  final pulumi.Input<String>? model;

  /// The SKU name.
  final pulumi.Input<String>? name;

  /// The SKU size.
  final pulumi.Input<String>? size;

  /// The SKU tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [Sku].
  /// [capacity] The SKU capacity.
  /// [family] The SKU family.
  /// [model] The SKU model.
  /// [name] The SKU name.
  /// [size] The SKU size.
  /// [tier] The SKU tier.
  Sku({
    this.capacity,
    this.family,
    this.model,
    this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'model': ?model,
      'name': ?name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      family: (() {
        final guardedValue = map['family'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      size: (() {
        final guardedValue = map['size'];
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
