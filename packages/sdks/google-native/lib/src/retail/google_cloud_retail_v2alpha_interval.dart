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
  GoogleCloudRetailV2alphaInterval({
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
      exclusiveMaximum: map['exclusiveMaximum'] == null ? null : (map['exclusiveMaximum'] as double).input(),
      exclusiveMinimum: map['exclusiveMinimum'] == null ? null : (map['exclusiveMinimum'] as double).input(),
      maximum: map['maximum'] == null ? null : (map['maximum'] as double).input(),
      minimum: map['minimum'] == null ? null : (map['minimum'] as double).input(),
    );
  }
}

