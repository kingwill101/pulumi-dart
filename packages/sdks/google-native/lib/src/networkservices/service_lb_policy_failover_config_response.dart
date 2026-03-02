// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.
class ServiceLbPolicyFailoverConfigResponse {
  /// Optional. The percentage threshold that a load balancer will begin to send traffic to failover backends. If the percentage of endpoints in a MIG/NEG is smaller than this value, traffic would be sent to failover backends if possible. This field should be set to a value between 1 and 99. The default value is 50 for Global external HTTP(S) load balancer (classic) and Proxyless service mesh, and 70 for others.
  final pulumi.Input<int> failoverHealthThreshold;

  /// Creates a new [ServiceLbPolicyFailoverConfigResponse].
  /// [failoverHealthThreshold] Optional. The percentage threshold that a load balancer will begin to send traffic to failover backends. If the percentage of endpoints in a MIG/NEG is smaller than this value, traffic would be sent to failover backends if possible. This field should be set to a value between 1 and 99. The default value is 50 for Global external HTTP(S) load balancer (classic) and Proxyless service mesh, and 70 for others.
  ServiceLbPolicyFailoverConfigResponse({
    required this.failoverHealthThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverHealthThreshold': failoverHealthThreshold,
    };
  }

  factory ServiceLbPolicyFailoverConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServiceLbPolicyFailoverConfigResponse(
      failoverHealthThreshold: (map['failoverHealthThreshold'] as int).input(),
    );
  }
}

