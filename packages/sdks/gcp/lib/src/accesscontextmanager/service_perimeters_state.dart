// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter.dart';

/// Input properties used for looking up and filtering ServicePerimeters resources.
class ServicePerimetersState {
  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String>? parent;

  /// The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimetersServicePerimeter>>?
  servicePerimeters;

  /// Creates a new [ServicePerimetersState].
  /// [parent] The AccessPolicy this ServicePerimeter lives in.
  /// [servicePerimeters] The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy.
  ServicePerimetersState({this.parent, this.servicePerimeters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': ?parent,
      'servicePerimeters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServicePerimetersServicePerimeter>,
            List<Map<String, dynamic>>
          >(
            servicePerimeters,
            (value) =>
                pulumi.Input.encodeList<
                  ServicePerimetersServicePerimeter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ServicePerimetersState.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersState(
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servicePerimeters: (() {
        final guardedValue = map['servicePerimeters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServicePerimetersServicePerimeter>(
            guardedValue,
            (value) => ServicePerimetersServicePerimeter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
