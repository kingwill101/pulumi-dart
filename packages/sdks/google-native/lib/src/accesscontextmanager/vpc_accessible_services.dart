// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how APIs are allowed to communicate within the Service Perimeter.
class VpcAccessibleServices {
  /// The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.
  final pulumi.Input<List<String>>? allowedServices;
  /// Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.
  final pulumi.Input<bool>? enableRestriction;

  /// Creates a new [VpcAccessibleServices].
  /// [allowedServices] The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.
  /// [enableRestriction] Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.
  VpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServices': ?allowedServices,
      'enableRestriction': ?enableRestriction,
    };
  }

  factory VpcAccessibleServices.fromMap(Map<String, dynamic> map) {
    return VpcAccessibleServices(
      allowedServices: map['allowedServices'] == null ? null : ((map['allowedServices'] as List).cast<String>()).input(),
      enableRestriction: map['enableRestriction'] == null ? null : (map['enableRestriction'] as bool).input(),
    );
  }
}

