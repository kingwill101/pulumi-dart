// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_from_response.dart';
import 'ingress_to_response.dart';

/// Policy for ingress into ServicePerimeter. IngressPolicies match requests based on `ingress_from` and `ingress_to` stanzas. For an ingress policy to match, both the `ingress_from` and `ingress_to` stanzas must be matched. If an IngressPolicy matches a request, the request is allowed through the perimeter boundary from outside the perimeter. For example, access from the internet can be allowed either based on an AccessLevel or, for traffic hosted on Google Cloud, the project of the source network. For access from private networks, using the project of the hosting network is required. Individual ingress policies can be limited by restricting which services and/or actions they match using the `ingress_to` field.
class IngressPolicyResponse {
  /// Defines the conditions on the source of a request causing this IngressPolicy to apply.
  final pulumi.Input<IngressFromResponse> ingressFrom;
  /// Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy to apply.
  final pulumi.Input<IngressToResponse> ingressTo;

  /// Creates a new [IngressPolicyResponse].
  /// [ingressFrom] Defines the conditions on the source of a request causing this IngressPolicy to apply.
  /// [ingressTo] Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy to apply.
  IngressPolicyResponse({
    required this.ingressFrom,
    required this.ingressTo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressFrom': pulumi.Input.mapInputValue<IngressFromResponse, Map<String, dynamic>>(ingressFrom, (value) => value.toMap()),
      'ingressTo': pulumi.Input.mapInputValue<IngressToResponse, Map<String, dynamic>>(ingressTo, (value) => value.toMap()),
    };
  }

  factory IngressPolicyResponse.fromMap(Map<String, dynamic> map) {
    return IngressPolicyResponse(
      ingressFrom: pulumi.Input.fromValue(IngressFromResponse.fromMap((map['ingressFrom']! as Map).cast<String, dynamic>())),
      ingressTo: pulumi.Input.fromValue(IngressToResponse.fromMap((map['ingressTo']! as Map).cast<String, dynamic>())),
    );
  }
}

