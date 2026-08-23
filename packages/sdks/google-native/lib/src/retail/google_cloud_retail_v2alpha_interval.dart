// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A floating point interval.
class GoogleCloudRetailV2alphaInterval {
  /// Exclusive upper bound.
  final pulumi.Input<double>? exclusiveMaximum;
  /// Exclusive lower bound.
  final pulumi.Input<double>? exclusiveMinimum;
  /// Inclusive upper bound.
  final pulumi.Input<double>? maximum;
  /// Inclusive lower bound.
  final pulumi.Input<double>? minimum;

  /// Creates a new [GoogleCloudRetailV2alphaInterval].
  /// [exclusiveMaximum] Exclusive upper bound.
  /// [exclusiveMinimum] Exclusive lower bound.
  /// [maximum] Inclusive upper bound.
  /// [minimum] Inclusive lower bound.
  const GoogleCloudRetailV2alphaInterval({
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    this.maximum,
    this.minimum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusiveMaximum': ?exclusiveMaximum,
      'exclusiveMinimum': ?exclusiveMinimum,
      'maximum': ?maximum,
      'minimum': ?minimum,
    };
  }

  factory GoogleCloudRetailV2alphaInterval.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaInterval(
      exclusiveMaximum: (() { final guardedValue = map['exclusiveMaximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      exclusiveMinimum: (() { final guardedValue = map['exclusiveMinimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maximum: (() { final guardedValue = map['maximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minimum: (() { final guardedValue = map['minimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
