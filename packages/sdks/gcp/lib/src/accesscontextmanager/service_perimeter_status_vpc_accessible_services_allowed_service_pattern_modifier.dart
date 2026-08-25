// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_vpc_accessible_services_allowed_service_pattern_modifier_add_request_header.dart';

class ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier {
  /// Adds additional HTTP request headers.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader?>? addRequestHeader;

  /// Creates a new [ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier].
  /// [addRequestHeader] Adds additional HTTP request headers.
  const ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier({
    this.addRequestHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRequestHeader': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader, Map<String, dynamic>>(addRequestHeader, (value) => value.toMap()),
    };
  }

  factory ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier(
      addRequestHeader: (() { final guardedValue = map['addRequestHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
