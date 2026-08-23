// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_ingress_policy_ingress_from.dart';
import 'service_perimeters_service_perimeter_spec_ingress_policy_ingress_to.dart';

class ServicePerimetersServicePerimeterSpecIngressPolicy {
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimetersServicePerimeterSpecIngressPolicyIngressFrom>? ingressFrom;
  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimetersServicePerimeterSpecIngressPolicyIngressTo>? ingressTo;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimetersServicePerimeterSpecIngressPolicy].
  /// [ingressFrom] Defines the conditions on the source of a request causing this `IngressPolicy`
  /// [ingressTo] Defines the conditions on the `ApiOperation` and request destination that cause
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  const ServicePerimetersServicePerimeterSpecIngressPolicy({
    this.ingressFrom,
    this.ingressTo,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimetersServicePerimeterSpecIngressPolicyIngressFrom, Map<String, dynamic>>(ingressFrom, (value) => value.toMap()),
      'ingressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimetersServicePerimeterSpecIngressPolicyIngressTo, Map<String, dynamic>>(ingressTo, (value) => value.toMap()),
      'title': ?title,
    };
  }

  factory ServicePerimetersServicePerimeterSpecIngressPolicy.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecIngressPolicy(
      ingressFrom: (() { final guardedValue = map['ingressFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimetersServicePerimeterSpecIngressPolicyIngressFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingressTo: (() { final guardedValue = map['ingressTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimetersServicePerimeterSpecIngressPolicyIngressTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
