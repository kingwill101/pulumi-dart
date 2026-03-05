// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLbPoliciesFailoverConfig {
  /// Optional. The percentage threshold that a load balancer will begin to send traffic to failover backends. If the percentage of endpoints in a MIG/NEG is smaller than this value, traffic would be sent to failover backends if possible. This field should be set to a value between 1 and 99. The default value is 50 for Global external HTTP(S) load balancer (classic) and Proxyless service mesh, and 70 for others.
  final pulumi.Input<int> failoverHealthThreshold;

  /// Creates a new [ServiceLbPoliciesFailoverConfig].
  /// [failoverHealthThreshold] Optional. The percentage threshold that a load balancer will begin to send traffic to failover backends. If the percentage of endpoints in a MIG/NEG is smaller than this value, traffic would be sent to failover backends if possible. This field should be set to a value between 1 and 99. The default value is 50 for Global external HTTP(S) load balancer (classic) and Proxyless service mesh, and 70 for others.
  ServiceLbPoliciesFailoverConfig({
    required this.failoverHealthThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverHealthThreshold': failoverHealthThreshold,
    };
  }

  factory ServiceLbPoliciesFailoverConfig.fromMap(Map<String, dynamic> map) {
    return ServiceLbPoliciesFailoverConfig(
      failoverHealthThreshold: pulumi.Input.fromValue(map['failoverHealthThreshold'] as int),
    );
  }
}

