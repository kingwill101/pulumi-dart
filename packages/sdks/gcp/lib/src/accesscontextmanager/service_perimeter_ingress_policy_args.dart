// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_ingress_policy_ingress_from.dart';
import 'service_perimeter_ingress_policy_ingress_to.dart';

/// {@template pulumi_accesscontextmanager_service_perimeter_ingress_policy_service_perimeter_ingress_policy_args_doc}
/// The set of arguments for ServicePerimeterIngressPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_ingress_policy_service_perimeter_ingress_policy_args_doc}
class ServicePerimeterIngressPolicyArgs {
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterIngressPolicyIngressFrom>? ingressFrom;
  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterIngressPolicyIngressTo>? ingressTo;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterIngressPolicyArgs].
  /// [ingressFrom] Defines the conditions on the source of a request causing this `IngressPolicy`
  /// [ingressTo] Defines the conditions on the `ApiOperation` and request destination that cause
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimeterIngressPolicyArgs({
    pulumi.Output<ServicePerimeterIngressPolicyIngressFrom>? ingressFrom,
    pulumi.Output<ServicePerimeterIngressPolicyIngressTo>? ingressTo,
    required pulumi.Output<String> perimeter,
    pulumi.Output<String>? title,
  }) :
      ingressFrom = pulumi.Input.asOptionalInput<ServicePerimeterIngressPolicyIngressFrom>(ingressFrom),
      ingressTo = pulumi.Input.asOptionalInput<ServicePerimeterIngressPolicyIngressTo>(ingressTo),
      perimeter = pulumi.Input.asInput<String>(perimeter),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterIngressPolicyIngressFrom, Map<String, dynamic>>(ingressFrom, (value) => value.toMap()),
      'ingressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterIngressPolicyIngressTo, Map<String, dynamic>>(ingressTo, (value) => value.toMap()),
      'perimeter': perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterIngressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterIngressPolicyArgs(
      ingressFrom: map['ingressFrom'] == null ? null : pulumi.Output.create<ServicePerimeterIngressPolicyIngressFrom>(ServicePerimeterIngressPolicyIngressFrom.fromMap((map['ingressFrom'] as Map).cast<String, dynamic>())),
      ingressTo: map['ingressTo'] == null ? null : pulumi.Output.create<ServicePerimeterIngressPolicyIngressTo>(ServicePerimeterIngressPolicyIngressTo.fromMap((map['ingressTo'] as Map).cast<String, dynamic>())),
      perimeter: pulumi.Output.create<String>(map['perimeter'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
    );
  }
}

