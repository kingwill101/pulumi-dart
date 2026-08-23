// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_ingress_policy_ingress_from.dart';
import 'service_perimeter_ingress_policy_ingress_to.dart';

/// {@template pulumi_accesscontextmanager_service_perimeter_ingress_policy_service_perimeter_ingress_policy_args_doc}
/// The set of arguments for ServicePerimeterIngressPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_ingress_policy_service_perimeter_ingress_policy_args_doc}
class ServicePerimeterIngressPolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [ingressFrom] Defines the conditions on the source of a request causing this `IngressPolicy`
  /// [ingressTo] Defines the conditions on the `ApiOperation` and request destination that cause
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  const ServicePerimeterIngressPolicyArgs({
    this.deletionPolicy,
    this.ingressFrom,
    this.ingressTo,
    required this.perimeter,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'ingressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterIngressPolicyIngressFrom, Map<String, dynamic>>(ingressFrom, (value) => value.toMap()),
      'ingressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterIngressPolicyIngressTo, Map<String, dynamic>>(ingressTo, (value) => value.toMap()),
      'perimeter': perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterIngressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterIngressPolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressFrom: (() { final guardedValue = map['ingressFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterIngressPolicyIngressFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingressTo: (() { final guardedValue = map['ingressTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterIngressPolicyIngressTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      perimeter: pulumi.Input.fromValue(map['perimeter'] as String),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
