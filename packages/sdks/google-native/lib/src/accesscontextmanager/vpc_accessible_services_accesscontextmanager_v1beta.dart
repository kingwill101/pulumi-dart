// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how APIs are allowed to communicate within the Service Perimeter.
class VpcAccessibleServicesAccesscontextmanagerV1beta {
  /// The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.
  final pulumi.Input<List<String>>? allowedServices;
  /// Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.
  final pulumi.Input<bool>? enableRestriction;

  /// Creates a new [VpcAccessibleServicesAccesscontextmanagerV1beta].
  /// [allowedServices] The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.
  /// [enableRestriction] Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.
  const VpcAccessibleServicesAccesscontextmanagerV1beta({
    this.allowedServices,
    this.enableRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServices': ?allowedServices,
      'enableRestriction': ?enableRestriction,
    };
  }

  factory VpcAccessibleServicesAccesscontextmanagerV1beta.fromMap(Map<String, dynamic> map) {
    return VpcAccessibleServicesAccesscontextmanagerV1beta(
      allowedServices: (() { final guardedValue = map['allowedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableRestriction: (() { final guardedValue = map['enableRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
