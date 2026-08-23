// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader {
  /// HTTP header key.
  final pulumi.Input<String> key;
  /// HTTP header value.
  final pulumi.Input<String> value;

  /// Creates a new [ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader].
  /// [key] HTTP header key.
  /// [value] HTTP header value.
  const ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
