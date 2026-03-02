// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_ingress_policy_ingress_from.dart';
import 'service_perimeter_ingress_policy_ingress_to.dart';

/// Input properties used for looking up and filtering ServicePerimeterIngressPolicy resources.
class ServicePerimeterIngressPolicyState {
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;
  /// The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  final pulumi.Input<String>? etag;
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterIngressPolicyIngressFrom>? ingressFrom;
  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterIngressPolicyIngressTo>? ingressTo;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String>? perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterIngressPolicyState].
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [etag] The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  /// [ingressFrom] Defines the conditions on the source of a request causing this `IngressPolicy`
  /// [ingressTo] Defines the conditions on the `ApiOperation` and request destination that cause
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimeterIngressPolicyState({
    this.accessPolicyId,
    this.etag,
    this.ingressFrom,
    this.ingressTo,
    this.perimeter,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
      'etag': ?etag,
      'ingressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterIngressPolicyIngressFrom, Map<String, dynamic>>(ingressFrom, (value) => value.toMap()),
      'ingressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterIngressPolicyIngressTo, Map<String, dynamic>>(ingressTo, (value) => value.toMap()),
      'perimeter': ?perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterIngressPolicyState.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterIngressPolicyState(
      accessPolicyId: map['accessPolicyId'] == null ? null : (map['accessPolicyId'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      ingressFrom: map['ingressFrom'] == null ? null : (ServicePerimeterIngressPolicyIngressFrom.fromMap((map['ingressFrom'] as Map).cast<String, dynamic>())).input(),
      ingressTo: map['ingressTo'] == null ? null : (ServicePerimeterIngressPolicyIngressTo.fromMap((map['ingressTo'] as Map).cast<String, dynamic>())).input(),
      perimeter: map['perimeter'] == null ? null : (map['perimeter'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

