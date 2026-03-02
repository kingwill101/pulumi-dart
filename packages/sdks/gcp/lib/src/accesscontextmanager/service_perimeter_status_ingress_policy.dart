// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_ingress_policy_ingress_from.dart';
import 'service_perimeter_status_ingress_policy_ingress_to.dart';

class ServicePerimeterStatusIngressPolicy {
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterStatusIngressPolicyIngressFrom>? ingressFrom;
  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterStatusIngressPolicyIngressTo>? ingressTo;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterStatusIngressPolicy].
  /// [ingressFrom] Defines the conditions on the source of a request causing this `IngressPolicy`
  /// [ingressTo] Defines the conditions on the `ApiOperation` and request destination that cause
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimeterStatusIngressPolicy({
    this.ingressFrom,
    this.ingressTo,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterStatusIngressPolicyIngressFrom, Map<String, dynamic>>(ingressFrom, (value) => value.toMap()),
      'ingressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterStatusIngressPolicyIngressTo, Map<String, dynamic>>(ingressTo, (value) => value.toMap()),
      'title': ?title,
    };
  }

  factory ServicePerimeterStatusIngressPolicy.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusIngressPolicy(
      ingressFrom: map['ingressFrom'] == null ? null : (ServicePerimeterStatusIngressPolicyIngressFrom.fromMap((map['ingressFrom']! as Map).cast<String, dynamic>())).input(),
      ingressTo: map['ingressTo'] == null ? null : (ServicePerimeterStatusIngressPolicyIngressTo.fromMap((map['ingressTo']! as Map).cast<String, dynamic>())).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
    );
  }
}

