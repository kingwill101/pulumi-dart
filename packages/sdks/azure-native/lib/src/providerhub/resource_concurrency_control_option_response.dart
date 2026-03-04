// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceConcurrencyControlOptionResponse {
  /// The policy.
  final pulumi.Input<String>? policy;

  /// Creates a new [ResourceConcurrencyControlOptionResponse].
  /// [policy] The policy.
  ResourceConcurrencyControlOptionResponse({this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policy': ?policy};
  }

  factory ResourceConcurrencyControlOptionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceConcurrencyControlOptionResponse(
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
