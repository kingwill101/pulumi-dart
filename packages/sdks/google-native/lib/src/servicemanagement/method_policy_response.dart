// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_policy_response.dart';

/// Defines policies applying to an RPC method.
class MethodPolicyResponse {
  /// Policies that are applicable to the request message.
  final pulumi.Input<List<FieldPolicyResponse>> requestPolicies;
  /// Selects a method to which these policies should be enforced, for example, "google.pubsub.v1.Subscriber.CreateSubscription". Refer to selector for syntax details. NOTE: This field must not be set in the proto annotation. It will be automatically filled by the service config compiler .
  final pulumi.Input<String> selector;

  /// Creates a new [MethodPolicyResponse].
  /// [requestPolicies] Policies that are applicable to the request message.
  /// [selector] Selects a method to which these policies should be enforced, for example, "google.pubsub.v1.Subscriber.CreateSubscription". Refer to selector for syntax details. NOTE: This field must not be set in the proto annotation. It will be automatically filled by the service config compiler .
  const MethodPolicyResponse({
    required this.requestPolicies,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestPolicies': pulumi.Input.mapInputValue<List<FieldPolicyResponse>, List<Map<String, dynamic>>>(requestPolicies, (value) => pulumi.Input.encodeList<FieldPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selector': selector,
    };
  }

  factory MethodPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MethodPolicyResponse(
      requestPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<FieldPolicyResponse>(map['requestPolicies']!, (value) => FieldPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      selector: pulumi.Input.fromValue(map['selector'] as String),
    );
  }
}

