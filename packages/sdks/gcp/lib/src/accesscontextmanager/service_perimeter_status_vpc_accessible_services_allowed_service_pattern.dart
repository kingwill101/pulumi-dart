// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_vpc_accessible_services_allowed_service_pattern_modifier.dart';

class ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern {
  /// Modifiers to apply to the requests that match the URL pattern.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier>>? modifiers;
  /// URL pattern to allow.
  final pulumi.Input<String>? pattern;
  /// Supported service to allow.
  final pulumi.Input<String>? service;

  /// Creates a new [ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern].
  /// [modifiers] Modifiers to apply to the requests that match the URL pattern.
  /// [pattern] URL pattern to allow.
  /// [service] Supported service to allow.
  const ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern({
    this.modifiers,
    this.pattern,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifiers': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier>, List<Map<String, dynamic>>>(modifiers, (value) => pulumi.Input.encodeList<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pattern': ?pattern,
      'service': ?service,
    };
  }

  factory ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern(
      modifiers: (() { final guardedValue = map['modifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier>(guardedValue, (value) => ServicePerimeterStatusVpcAccessibleServicesAllowedServicePatternModifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
