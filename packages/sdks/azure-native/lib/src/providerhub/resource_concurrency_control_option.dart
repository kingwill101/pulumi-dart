// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceConcurrencyControlOption {
  /// The policy.
  final pulumi.Input<String>? policy;

  /// Creates a new [ResourceConcurrencyControlOption].
  /// [policy] The policy.
  ResourceConcurrencyControlOption({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory ResourceConcurrencyControlOption.fromMap(Map<String, dynamic> map) {
    return ResourceConcurrencyControlOption(
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
    );
  }
}

