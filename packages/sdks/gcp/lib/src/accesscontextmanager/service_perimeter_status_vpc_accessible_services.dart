// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePerimeterStatusVpcAccessibleServices {
  /// The list of APIs usable within the Service Perimeter.
  /// Must be empty unless `enableRestriction` is True.
  final pulumi.Input<List<String>>? allowedServices;
  /// Whether to restrict API calls within the Service Perimeter to the
  /// list of APIs specified in 'allowedServices'.
  final pulumi.Input<bool>? enableRestriction;

  /// Creates a new [ServicePerimeterStatusVpcAccessibleServices].
  /// [allowedServices] The list of APIs usable within the Service Perimeter.
  /// [enableRestriction] Whether to restrict API calls within the Service Perimeter to the
  ServicePerimeterStatusVpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedServices': ?allowedServices,
      'enableRestriction': ?enableRestriction,
    };
  }

  factory ServicePerimeterStatusVpcAccessibleServices.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusVpcAccessibleServices(
      allowedServices: map['allowedServices'] == null ? null : ((map['allowedServices'] as List).cast<String>()).input(),
      enableRestriction: map['enableRestriction'] == null ? null : (map['enableRestriction'] as bool).input(),
    );
  }
}

