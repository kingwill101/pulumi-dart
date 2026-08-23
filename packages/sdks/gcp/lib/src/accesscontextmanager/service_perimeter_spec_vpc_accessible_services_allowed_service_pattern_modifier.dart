// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_spec_vpc_accessible_services_allowed_service_pattern_modifier_add_request_header.dart';

class ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier {
  /// Adds additional HTTP request headers.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader>? addRequestHeader;

  /// Creates a new [ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier].
  /// [addRequestHeader] Adds additional HTTP request headers.
  const ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier({
    this.addRequestHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRequestHeader': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader, Map<String, dynamic>>(addRequestHeader, (value) => value.toMap()),
    };
  }

  factory ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier(
      addRequestHeader: (() { final guardedValue = map['addRequestHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifierAddRequestHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
