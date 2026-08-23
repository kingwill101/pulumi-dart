// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_policy.dart';

/// Defines policies applying to an RPC method.
class MethodPolicy {
  /// Policies that are applicable to the request message.
  final pulumi.Input<List<FieldPolicy>>? requestPolicies;
  /// Selects a method to which these policies should be enforced, for example, "google.pubsub.v1.Subscriber.CreateSubscription". Refer to selector for syntax details. NOTE: This field must not be set in the proto annotation. It will be automatically filled by the service config compiler .
  final pulumi.Input<String>? selector;

  /// Creates a new [MethodPolicy].
  /// [requestPolicies] Policies that are applicable to the request message.
  /// [selector] Selects a method to which these policies should be enforced, for example, "google.pubsub.v1.Subscriber.CreateSubscription". Refer to selector for syntax details. NOTE: This field must not be set in the proto annotation. It will be automatically filled by the service config compiler .
  const MethodPolicy({
    this.requestPolicies,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestPolicies': ?pulumi.Input.mapOptionalInputValue<List<FieldPolicy>, List<Map<String, dynamic>>>(requestPolicies, (value) => pulumi.Input.encodeList<FieldPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selector': ?selector,
    };
  }

  factory MethodPolicy.fromMap(Map<String, dynamic> map) {
    return MethodPolicy(
      requestPolicies: (() { final guardedValue = map['requestPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FieldPolicy>(guardedValue, (value) => FieldPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
