// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_vpc_accessible_services_allowed_service_pattern_modifier_add_request_header.dart';

class ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier {
  /// Adds additional HTTP request headers.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader?>? addRequestHeader;

  /// Creates a new [ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier].
  /// [addRequestHeader] Adds additional HTTP request headers.
  const ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier({
    this.addRequestHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRequestHeader': ?pulumi.Input.mapOptionalInputValue<ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader, Map<String, dynamic>>(addRequestHeader, (value) => value.toMap()),
    };
  }

  factory ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier(
      addRequestHeader: (() { final guardedValue = map['addRequestHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimetersServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
