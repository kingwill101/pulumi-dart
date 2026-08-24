// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerPoolLoadShedding {
  /// The percent of traffic to shed from the pool, according to the default policy. Applies to new sessions and traffic without session affinity.
  final pulumi.Input<double> defaultPercent;
  /// The default policy to use when load shedding. A random policy randomly sheds a given percent of requests. A hash policy computes a hash over the CF-Connecting-IP address and sheds all requests originating from a percent of IPs.
  /// Available values: "random", "hash".
  final pulumi.Input<String> defaultPolicy;
  /// The percent of existing sessions to shed from the pool, according to the session policy.
  final pulumi.Input<double> sessionPercent;
  /// Only the hash policy is supported for existing sessions (to avoid exponential decay).
  /// Available values: "hash".
  final pulumi.Input<String> sessionPolicy;

  /// Creates a new [GetLoadBalancerPoolLoadShedding].
  /// [defaultPercent] The percent of traffic to shed from the pool, according to the default policy. Applies to new sessions and traffic without session affinity.
  /// [defaultPolicy] The default policy to use when load shedding. A random policy randomly sheds a given percent of requests. A hash policy computes a hash over the CF-Connecting-IP address and sheds all requests originating from a percent of IPs.
  /// [sessionPercent] The percent of existing sessions to shed from the pool, according to the session policy.
  /// [sessionPolicy] Only the hash policy is supported for existing sessions (to avoid exponential decay).
  const GetLoadBalancerPoolLoadShedding({
    required this.defaultPercent,
    required this.defaultPolicy,
    required this.sessionPercent,
    required this.sessionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPercent': defaultPercent,
      'defaultPolicy': defaultPolicy,
      'sessionPercent': sessionPercent,
      'sessionPolicy': sessionPolicy,
    };
  }

  factory GetLoadBalancerPoolLoadShedding.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolLoadShedding(
      defaultPercent: pulumi.Input.fromValue((map['defaultPercent'] as num).toDouble()),
      defaultPolicy: pulumi.Input.fromValue(map['defaultPolicy'] as String),
      sessionPercent: pulumi.Input.fromValue((map['sessionPercent'] as num).toDouble()),
      sessionPolicy: pulumi.Input.fromValue(map['sessionPolicy'] as String),
    );
  }
}
