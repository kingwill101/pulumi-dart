// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The capacity.
class SkuSettingCapacityResponse {
  /// The default.
  final pulumi.Input<int>? default_;
  /// The maximum.
  final pulumi.Input<int>? maximum;
  /// The minimum.
  final pulumi.Input<int> minimum;
  /// The scale type.
  final pulumi.Input<String>? scaleType;

  /// Creates a new [SkuSettingCapacityResponse].
  /// [default_] The default.
  /// [maximum] The maximum.
  /// [minimum] The minimum.
  /// [scaleType] The scale type.
  SkuSettingCapacityResponse({
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

  factory SkuSettingCapacityResponse.fromMap(Map<String, dynamic> map) {
    return SkuSettingCapacityResponse(
      default_: map['default'] == null ? null : (map['default']! as int).input(),
      maximum: map['maximum'] == null ? null : (map['maximum']! as int).input(),
      minimum: (map['minimum'] as int).input(),
      scaleType: map['scaleType'] == null ? null : (map['scaleType']! as String).input(),
    );
  }
}

