// ignore_for_file: unused_element, unnecessary_cast


/// A floating point interval.
class GoogleCloudRetailV2alphaInterval {
  /// Exclusive upper bound.
  final double? exclusiveMaximum;
  /// Exclusive lower bound.
  final double? exclusiveMinimum;
  /// Inclusive upper bound.
  final double? maximum;
  /// Inclusive lower bound.
  final double? minimum;

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
      exclusiveMaximum: map['exclusiveMaximum'] == null ? null : map['exclusiveMaximum'] as double,
      exclusiveMinimum: map['exclusiveMinimum'] == null ? null : map['exclusiveMinimum'] as double,
      maximum: map['maximum'] == null ? null : map['maximum'] as double,
      minimum: map['minimum'] == null ? null : map['minimum'] as double,
    );
  }
}

