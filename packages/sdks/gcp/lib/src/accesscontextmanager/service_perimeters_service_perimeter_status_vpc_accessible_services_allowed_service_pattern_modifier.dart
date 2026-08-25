// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_status_vpc_accessible_services_allowed_service_pattern_modifier_add_request_header.dart';

class ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier {
  /// Adds additional HTTP request headers.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader?>? addRequestHeader;

  /// Creates a new [ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier].
  /// [addRequestHeader] Adds additional HTTP request headers.
  const ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier({
    this.addRequestHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRequestHeader': ?pulumi.Input.mapOptionalInputValue<ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader, Map<String, dynamic>>(addRequestHeader, (value) => value.toMap()),
    };
  }

  factory ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier(
      addRequestHeader: (() { final guardedValue = map['addRequestHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
