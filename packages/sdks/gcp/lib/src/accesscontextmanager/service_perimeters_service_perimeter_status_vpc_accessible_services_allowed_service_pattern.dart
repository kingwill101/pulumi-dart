// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_status_vpc_accessible_services_allowed_service_pattern_modifier.dart';

class ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern {
  /// Modifiers to apply to the requests that match the URL pattern.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier>>? modifiers;
  /// URL pattern to allow.
  final pulumi.Input<String>? pattern;
  /// Supported service to allow.
  final pulumi.Input<String>? service;

  /// Creates a new [ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern].
  /// [modifiers] Modifiers to apply to the requests that match the URL pattern.
  /// [pattern] URL pattern to allow.
  /// [service] Supported service to allow.
  const ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern({
    this.modifiers,
    this.pattern,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifiers': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier>, List<Map<String, dynamic>>>(modifiers, (value) => pulumi.Input.encodeList<ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pattern': ?pattern,
      'service': ?service,
    };
  }

  factory ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern(
      modifiers: (() { final guardedValue = map['modifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier>(guardedValue, (value) => ServicePerimetersServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
