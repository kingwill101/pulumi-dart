// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_ingress_policy_ingress_from.dart';
import 'service_perimeter_dry_run_ingress_policy_ingress_to.dart';

/// {@template pulumi_accesscontextmanager_service_perimeter_dry_run_ingress_policy_service_perimeter_dry_run_ingress_policy_args_doc}
/// The set of arguments for ServicePerimeterDryRunIngressPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_dry_run_ingress_policy_service_perimeter_dry_run_ingress_policy_args_doc}
class ServicePerimeterDryRunIngressPolicyArgs {
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterDryRunIngressPolicyIngressFrom>? ingressFrom;
  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterDryRunIngressPolicyIngressTo>? ingressTo;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterDryRunIngressPolicyArgs].
  /// [ingressFrom] Defines the conditions on the source of a request causing this `IngressPolicy`
  /// [ingressTo] Defines the conditions on the `ApiOperation` and request destination that cause
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimeterDryRunIngressPolicyArgs({
    this.ingressFrom,
    this.ingressTo,
    required this.perimeter,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterDryRunIngressPolicyIngressFrom, Map<String, dynamic>>(ingressFrom, (value) => value.toMap()),
      'ingressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterDryRunIngressPolicyIngressTo, Map<String, dynamic>>(ingressTo, (value) => value.toMap()),
      'perimeter': perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterDryRunIngressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterDryRunIngressPolicyArgs(
      ingressFrom: map['ingressFrom'] == null ? null : (ServicePerimeterDryRunIngressPolicyIngressFrom.fromMap((map['ingressFrom'] as Map).cast<String, dynamic>())).input(),
      ingressTo: map['ingressTo'] == null ? null : (ServicePerimeterDryRunIngressPolicyIngressTo.fromMap((map['ingressTo'] as Map).cast<String, dynamic>())).input(),
      perimeter: (map['perimeter'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

