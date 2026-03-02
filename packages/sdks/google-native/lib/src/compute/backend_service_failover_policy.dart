// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview). On failover or failback, this field indicates whether connection draining will be honored. Google Cloud has a fixed connection draining timeout of 10 minutes. A setting of true terminates existing TCP connections to the active pool during failover and failback, immediately draining traffic. A setting of false allows existing TCP connections to persist, even on VMs no longer in the active pool, for up to the duration of the connection draining timeout (10 minutes).
class BackendServiceFailoverPolicy {
  /// This can be set to true only if the protocol is TCP. The default is false.
  final pulumi.Input<bool>? disableConnectionDrainOnFailover;
  /// If set to true, connections to the load balancer are dropped when all primary and all backup backend VMs are unhealthy.If set to false, connections are distributed among all primary VMs when all primary and all backup backend VMs are unhealthy. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview). The default is false.
  final pulumi.Input<bool>? dropTrafficIfUnhealthy;
  /// The value of the field must be in the range [0, 1]. If the value is 0, the load balancer performs a failover when the number of healthy primary VMs equals zero. For all other values, the load balancer performs a failover when the total number of healthy primary VMs is less than this ratio. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  final pulumi.Input<double>? failoverRatio;

  /// Creates a new [BackendServiceFailoverPolicy].
  /// [disableConnectionDrainOnFailover] This can be set to true only if the protocol is TCP. The default is false.
  /// [dropTrafficIfUnhealthy] If set to true, connections to the load balancer are dropped when all primary and all backup backend VMs are unhealthy.If set to false, connections are distributed among all primary VMs when all primary and all backup backend VMs are unhealthy. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview). The default is false.
  /// [failoverRatio] The value of the field must be in the range [0, 1]. If the value is 0, the load balancer performs a failover when the number of healthy primary VMs equals zero. For all other values, the load balancer performs a failover when the total number of healthy primary VMs is less than this ratio. For load balancers that have configurable failover: [Internal TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/internal/failover-overview) and [external TCP/UDP Load Balancing](https://cloud.google.com/load-balancing/docs/network/networklb-failover-overview).
  BackendServiceFailoverPolicy({
    this.disableConnectionDrainOnFailover,
    this.dropTrafficIfUnhealthy,
    this.failoverRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableConnectionDrainOnFailover': ?disableConnectionDrainOnFailover,
      'dropTrafficIfUnhealthy': ?dropTrafficIfUnhealthy,
      'failoverRatio': ?failoverRatio,
    };
  }

  factory BackendServiceFailoverPolicy.fromMap(Map<String, dynamic> map) {
    return BackendServiceFailoverPolicy(
      disableConnectionDrainOnFailover: map['disableConnectionDrainOnFailover'] == null ? null : (map['disableConnectionDrainOnFailover'] as bool).input(),
      dropTrafficIfUnhealthy: map['dropTrafficIfUnhealthy'] == null ? null : (map['dropTrafficIfUnhealthy'] as bool).input(),
      failoverRatio: map['failoverRatio'] == null ? null : (map['failoverRatio'] as double).input(),
    );
  }
}

