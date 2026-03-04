// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_status_ingress_policy_ingress_from.dart';
import 'service_perimeters_service_perimeter_status_ingress_policy_ingress_to.dart';

class ServicePerimetersServicePerimeterStatusIngressPolicy {
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  final pulumi.Input<
    ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom
  >?
  ingressFrom;

  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<
    ServicePerimetersServicePerimeterStatusIngressPolicyIngressTo
  >?
  ingressTo;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimetersServicePerimeterStatusIngressPolicy].
  /// [ingressFrom] Defines the conditions on the source of a request causing this `IngressPolicy`
  /// [ingressTo] Defines the conditions on the `ApiOperation` and request destination that cause
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimetersServicePerimeterStatusIngressPolicy({
    this.ingressFrom,
    this.ingressTo,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressFrom':
          ?pulumi.Input.mapOptionalInputValue<
            ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom,
            Map<String, dynamic>
          >(ingressFrom, (value) => value.toMap()),
      'ingressTo':
          ?pulumi.Input.mapOptionalInputValue<
            ServicePerimetersServicePerimeterStatusIngressPolicyIngressTo,
            Map<String, dynamic>
          >(ingressTo, (value) => value.toMap()),
      'title': ?title,
    };
  }

  factory ServicePerimetersServicePerimeterStatusIngressPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimetersServicePerimeterStatusIngressPolicy(
      ingressFrom: (() {
        final guardedValue = map['ingressFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ingressTo: (() {
        final guardedValue = map['ingressTo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServicePerimetersServicePerimeterStatusIngressPolicyIngressTo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
