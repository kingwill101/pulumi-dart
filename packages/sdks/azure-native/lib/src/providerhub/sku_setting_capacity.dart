// ignore_for_file: unused_element, unnecessary_cast


/// The capacity.
class SkuSettingCapacity {
  /// The default.
  final int? default_;
  /// The maximum.
  final int? maximum;
  /// The minimum.
  final int minimum;
  /// The scale type.
  final String? scaleType;

  /// Creates a new [SkuSettingCapacity].
  /// [default_] The default.
  /// [maximum] The maximum.
  /// [minimum] The minimum.
  /// [scaleType] The scale type.
  SkuSettingCapacity({
    this.default_,
    this.maximum,
    required this.minimum,
    this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'maximum': ?maximum,
      'minimum': minimum,
      'scaleType': ?scaleType,
    };
  }

  factory SkuSettingCapacity.fromMap(Map<String, dynamic> map) {
    return SkuSettingCapacity(
      default_: map['default'] == null ? null : map['default'] as int,
      maximum: map['maximum'] == null ? null : map['maximum'] as int,
      minimum: map['minimum'] as int,
      scaleType: map['scaleType'] == null ? null : map['scaleType'] as String,
    );
  }
}

