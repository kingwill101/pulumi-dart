// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of the App Service plan scale options.
class SkuCapacityResponse {
  /// Default number of workers for this App Service plan SKU.
  final pulumi.Input<int>? default_;
  /// Maximum number of Elastic workers for this App Service plan SKU.
  final pulumi.Input<int>? elasticMaximum;
  /// Maximum number of workers for this App Service plan SKU.
  final pulumi.Input<int>? maximum;
  /// Minimum number of workers for this App Service plan SKU.
  final pulumi.Input<int>? minimum;
  /// Available scale configurations for an App Service plan.
  final pulumi.Input<String>? scaleType;

  /// Creates a new [SkuCapacityResponse].
  /// [default_] Default number of workers for this App Service plan SKU.
  /// [elasticMaximum] Maximum number of Elastic workers for this App Service plan SKU.
  /// [maximum] Maximum number of workers for this App Service plan SKU.
  /// [minimum] Minimum number of workers for this App Service plan SKU.
  /// [scaleType] Available scale configurations for an App Service plan.
  SkuCapacityResponse({
    this.default_,
    this.elasticMaximum,
    this.maximum,
    this.minimum,
    this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'elasticMaximum': ?elasticMaximum,
      'maximum': ?maximum,
      'minimum': ?minimum,
      'scaleType': ?scaleType,
    };
  }

  factory SkuCapacityResponse.fromMap(Map<String, dynamic> map) {
    return SkuCapacityResponse(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      elasticMaximum: (() { final guardedValue = map['elasticMaximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximum: (() { final guardedValue = map['maximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimum: (() { final guardedValue = map['minimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scaleType: (() { final guardedValue = map['scaleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

