// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing, Internal HTTP(S) load balancing and Traffic Director.
class SubsettingResponseComputeV1 {
  final pulumi.Input<String> policy;

  /// Creates a new [SubsettingResponseComputeV1].
  /// [policy] Required.
  const SubsettingResponseComputeV1({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory SubsettingResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SubsettingResponseComputeV1(
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}
