// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_vpc_accessible_services_allowed_service_pattern.dart';

class ServicePerimeterStatusVpcAccessibleServices {
  /// Specifies which Google services are allowed to be accessed from
  /// VPC networks in the service perimeter.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern>?>? allowedServicePatterns;
  /// The list of APIs usable within the Service Perimeter.
  /// Must be empty unless `enableRestriction` is True.
  final pulumi.Input<List<String>?>? allowedServices;
  /// Whether to restrict API calls within the Service Perimeter to the
  /// list of APIs specified in 'allowedServices'.
  final pulumi.Input<bool?>? enableRestriction;
  /// Defines the enforcement scopes of service patterns.
  /// Each value may be one of: `GOOGLE_APIS_VIA_PRIVATE_PATH`.
  final pulumi.Input<List<String>?>? servicePatternsEnforcementScopes;

  /// Creates a new [ServicePerimeterStatusVpcAccessibleServices].
  /// [allowedServicePatterns] Specifies which Google services are allowed to be accessed from
  /// [allowedServices] The list of APIs usable within the Service Perimeter.
  /// [enableRestriction] Whether to restrict API calls within the Service Perimeter to the
  /// [servicePatternsEnforcementScopes] Defines the enforcement scopes of service patterns.
  const ServicePerimeterStatusVpcAccessibleServices({
    this.allowedServicePatterns,
    this.allowedServices,
    this.enableRestriction,
    this.servicePatternsEnforcementScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServicePatterns': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern>, List<Map<String, dynamic>>>(allowedServicePatterns, (value) => pulumi.Input.encodeList<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowedServices': ?allowedServices,
      'enableRestriction': ?enableRestriction,
      'servicePatternsEnforcementScopes': ?servicePatternsEnforcementScopes,
    };
  }

  factory ServicePerimeterStatusVpcAccessibleServices.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusVpcAccessibleServices(
      allowedServicePatterns: (() { final guardedValue = map['allowedServicePatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern>(guardedValue, (value) => ServicePerimeterStatusVpcAccessibleServicesAllowedServicePattern.fromMap((value as Map).cast<String, dynamic>()))); })(),
      allowedServices: (() { final guardedValue = map['allowedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableRestriction: (() { final guardedValue = map['enableRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      servicePatternsEnforcementScopes: (() { final guardedValue = map['servicePatternsEnforcementScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
