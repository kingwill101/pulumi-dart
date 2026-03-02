// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceFailoverPolicy {
  /// On failover or failback, this field indicates whether connection drain
  /// will be honored. Setting this to true has the following effect: connections
  /// to the old active pool are not drained. Connections to the new active pool
  /// use the timeout of 10 min (currently fixed). Setting to false has the
  /// following effect: both old and new connections will have a drain timeout
  /// of 10 min.
  /// This can be set to true only if the protocol is TCP.
  /// The default is false.
  final pulumi.Input<bool>? disableConnectionDrainOnFailover;
  /// This option is used only when no healthy VMs are detected in the primary
  /// and backup instance groups. When set to true, traffic is dropped. When
  /// set to false, new connections are sent across all VMs in the primary group.
  /// The default is false.
  final pulumi.Input<bool>? dropTrafficIfUnhealthy;
  /// The value of the field must be in [0, 1]. If the ratio of the healthy
  /// VMs in the primary backend is at or below this number, traffic arriving
  /// at the load-balanced IP will be directed to the failover backend.
  /// In case where 'failoverRatio' is not set or all the VMs in the backup
  /// backend are unhealthy, the traffic will be directed back to the primary
  /// backend in the "force" mode, where traffic will be spread to the healthy
  /// VMs with the best effort, or to all VMs when no VM is healthy.
  /// This field is only used with l4 load balancing.
  final pulumi.Input<double>? failoverRatio;

  /// Creates a new [RegionBackendServiceFailoverPolicy].
  /// [disableConnectionDrainOnFailover] On failover or failback, this field indicates whether connection drain
  /// [dropTrafficIfUnhealthy] This option is used only when no healthy VMs are detected in the primary
  /// [failoverRatio] The value of the field must be in [0, 1]. If the ratio of the healthy
  RegionBackendServiceFailoverPolicy({
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

  factory RegionBackendServiceFailoverPolicy.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceFailoverPolicy(
      disableConnectionDrainOnFailover: map['disableConnectionDrainOnFailover'] == null ? null : (map['disableConnectionDrainOnFailover']! as bool).input(),
      dropTrafficIfUnhealthy: map['dropTrafficIfUnhealthy'] == null ? null : (map['dropTrafficIfUnhealthy']! as bool).input(),
      failoverRatio: map['failoverRatio'] == null ? null : (map['failoverRatio']! as double).input(),
    );
  }
}

