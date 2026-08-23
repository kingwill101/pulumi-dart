// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_ingress_policy_ingress_from.dart';
import 'service_perimeter_dry_run_ingress_policy_ingress_to.dart';

/// Input properties used for looking up and filtering ServicePerimeterDryRunIngressPolicy resources.
class ServicePerimeterDryRunIngressPolicyState {
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  final pulumi.Input<String>? etag;
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterDryRunIngressPolicyIngressFrom>? ingressFrom;
  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterDryRunIngressPolicyIngressTo>? ingressTo;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String>? perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterDryRunIngressPolicyState].
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  /// [ingressFrom] Defines the conditions on the source of a request causing this `IngressPolicy`
  /// [ingressTo] Defines the conditions on the `ApiOperation` and request destination that cause
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  const ServicePerimeterDryRunIngressPolicyState({
    this.accessPolicyId,
    this.deletionPolicy,
    this.etag,
    this.ingressFrom,
    this.ingressTo,
    this.perimeter,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'ingressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterDryRunIngressPolicyIngressFrom, Map<String, dynamic>>(ingressFrom, (value) => value.toMap()),
      'ingressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterDryRunIngressPolicyIngressTo, Map<String, dynamic>>(ingressTo, (value) => value.toMap()),
      'perimeter': ?perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterDryRunIngressPolicyState.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterDryRunIngressPolicyState(
      accessPolicyId: (() { final guardedValue = map['accessPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressFrom: (() { final guardedValue = map['ingressFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterDryRunIngressPolicyIngressFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingressTo: (() { final guardedValue = map['ingressTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterDryRunIngressPolicyIngressTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      perimeter: (() { final guardedValue = map['perimeter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
