// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_spec_vpc_accessible_services_allowed_service_pattern_modifier.dart';

class ServicePerimeterSpecVpcAccessibleServicesAllowedServicePattern {
  /// Modifiers to apply to the requests that match the URL pattern.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier>>? modifiers;
  /// URL pattern to allow.
  final pulumi.Input<String>? pattern;
  /// Supported service to allow.
  final pulumi.Input<String>? service;

  /// Creates a new [ServicePerimeterSpecVpcAccessibleServicesAllowedServicePattern].
  /// [modifiers] Modifiers to apply to the requests that match the URL pattern.
  /// [pattern] URL pattern to allow.
  /// [service] Supported service to allow.
  const ServicePerimeterSpecVpcAccessibleServicesAllowedServicePattern({
    this.modifiers,
    this.pattern,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifiers': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier>, List<Map<String, dynamic>>>(modifiers, (value) => pulumi.Input.encodeList<ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pattern': ?pattern,
      'service': ?service,
    };
  }

  factory ServicePerimeterSpecVpcAccessibleServicesAllowedServicePattern.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterSpecVpcAccessibleServicesAllowedServicePattern(
      modifiers: (() { final guardedValue = map['modifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier>(guardedValue, (value) => ServicePerimeterSpecVpcAccessibleServicesAllowedServicePatternModifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
