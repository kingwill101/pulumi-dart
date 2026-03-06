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
  const SkuSettingCapacityResponse({
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
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximum: (() { final guardedValue = map['maximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimum: pulumi.Input.fromValue(map['minimum'] as int),
      scaleType: (() { final guardedValue = map['scaleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

