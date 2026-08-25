// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_egress_policy_egress_from.dart';
import 'service_perimeter_egress_policy_egress_to.dart';

/// {@template pulumi_accesscontextmanager_service_perimeter_egress_policy_service_perimeter_egress_policy_args_doc}
/// The set of arguments for ServicePerimeterEgressPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_egress_policy_service_perimeter_egress_policy_args_doc}
class ServicePerimeterEgressPolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterEgressPolicyEgressFrom?>? egressFrom;
  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterEgressPolicyEgressTo?>? egressTo;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String?>? title;

  /// Creates a new [ServicePerimeterEgressPolicyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [egressFrom] Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// [egressTo] Defines the conditions on the `ApiOperation` and destination resources that
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  const ServicePerimeterEgressPolicyArgs({
    this.deletionPolicy,
    this.egressFrom,
    this.egressTo,
    required this.perimeter,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'egressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterEgressPolicyEgressFrom, Map<String, dynamic>>(egressFrom, (value) => value.toMap()),
      'egressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterEgressPolicyEgressTo, Map<String, dynamic>>(egressTo, (value) => value.toMap()),
      'perimeter': perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterEgressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterEgressPolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressFrom: (() { final guardedValue = map['egressFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterEgressPolicyEgressFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      egressTo: (() { final guardedValue = map['egressTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterEgressPolicyEgressTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      perimeter: pulumi.Input.fromValue(map['perimeter'] as String),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
