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
    pulumi.Output<String>? accessPolicyId,
    pulumi.Output<String>? etag,
    pulumi.Output<ServicePerimeterIngressPolicyIngressFrom>? ingressFrom,
    pulumi.Output<ServicePerimeterIngressPolicyIngressTo>? ingressTo,
    pulumi.Output<String>? perimeter,
    pulumi.Output<String>? title,
  }) :
      accessPolicyId = pulumi.Input.asOptionalInput<String>(accessPolicyId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      ingressFrom = pulumi.Input.asOptionalInput<ServicePerimeterIngressPolicyIngressFrom>(ingressFrom),
      ingressTo = pulumi.Input.asOptionalInput<ServicePerimeterIngressPolicyIngressTo>(ingressTo),
      perimeter = pulumi.Input.asOptionalInput<String>(perimeter),
      title = pulumi.Input.asOptionalInput<String>(title);

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
      accessPolicyId: map['accessPolicyId'] == null ? null : pulumi.Output.create<String>(map['accessPolicyId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      ingressFrom: map['ingressFrom'] == null ? null : pulumi.Output.create<ServicePerimeterIngressPolicyIngressFrom>(ServicePerimeterIngressPolicyIngressFrom.fromMap((map['ingressFrom'] as Map).cast<String, dynamic>())),
      ingressTo: map['ingressTo'] == null ? null : pulumi.Output.create<ServicePerimeterIngressPolicyIngressTo>(ServicePerimeterIngressPolicyIngressTo.fromMap((map['ingressTo'] as Map).cast<String, dynamic>())),
      perimeter: map['perimeter'] == null ? null : pulumi.Output.create<String>(map['perimeter'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
    );
  }
}

