// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A floating point interval.
class GoogleCloudRetailV2betaInterval {
  /// Exclusive upper bound.
  final pulumi.Input<double>? exclusiveMaximum;
  /// Exclusive lower bound.
  final pulumi.Input<double>? exclusiveMinimum;
  /// Inclusive upper bound.
  final pulumi.Input<double>? maximum;
  /// Inclusive lower bound.
  final pulumi.Input<double>? minimum;

  /// Creates a new [GoogleCloudRetailV2betaInterval].
  /// [exclusiveMaximum] Exclusive upper bound.
  /// [exclusiveMinimum] Exclusive lower bound.
  /// [maximum] Inclusive upper bound.
  /// [minimum] Inclusive lower bound.
  GoogleCloudRetailV2betaInterval({
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

  factory GoogleCloudRetailV2betaInterval.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaInterval(
      exclusiveMaximum: map['exclusiveMaximum'] == null ? null : (map['exclusiveMaximum'] as double).input(),
      exclusiveMinimum: map['exclusiveMinimum'] == null ? null : (map['exclusiveMinimum'] as double).input(),
      maximum: map['maximum'] == null ? null : (map['maximum'] as double).input(),
      minimum: map['minimum'] == null ? null : (map['minimum'] as double).input(),
    );
  }
}

