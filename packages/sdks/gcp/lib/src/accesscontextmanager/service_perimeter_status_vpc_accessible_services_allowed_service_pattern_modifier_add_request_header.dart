// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader {
  /// HTTP header key.
  final pulumi.Input<String> key;
  /// HTTP header value.
  final pulumi.Input<String> value;

  /// Creates a new [ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader].
  /// [key] HTTP header key.
  /// [value] HTTP header value.
  const ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
