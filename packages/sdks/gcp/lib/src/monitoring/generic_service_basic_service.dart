// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GenericServiceBasicService {
  /// Labels that specify the resource that emits the monitoring data
  /// which is used for SLO reporting of this `Service`.
  final pulumi.Input<Map<String, String>>? serviceLabels;

  /// The type of service that this basic service defines, e.g.
  /// APP_ENGINE service type
  final pulumi.Input<String>? serviceType;

  /// Creates a new [GenericServiceBasicService].
  /// [serviceLabels] Labels that specify the resource that emits the monitoring data
  /// [serviceType] The type of service that this basic service defines, e.g.
  GenericServiceBasicService({this.serviceLabels, this.serviceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceLabels': ?serviceLabels,
      'serviceType': ?serviceType,
    };
  }

  factory GenericServiceBasicService.fromMap(Map<String, dynamic> map) {
    return GenericServiceBasicService(
      serviceLabels: (() {
        final guardedValue = map['serviceLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      serviceType: (() {
        final guardedValue = map['serviceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
