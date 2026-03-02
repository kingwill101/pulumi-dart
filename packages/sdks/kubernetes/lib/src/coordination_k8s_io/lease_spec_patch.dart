// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LeaseSpec is a specification of a Lease.
class LeaseSpecPatch {
  /// acquireTime is a time when the current lease was acquired.
  final pulumi.Input<String>? acquireTime;
  /// holderIdentity contains the identity of the holder of a current lease. If Coordinated Leader Election is used, the holder identity must be equal to the elected LeaseCandidate.metadata.name field.
  final pulumi.Input<String>? holderIdentity;
  /// leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measured against the time of last observed renewTime.
  final pulumi.Input<int>? leaseDurationSeconds;
  /// leaseTransitions is the number of transitions of a lease between holders.
  final pulumi.Input<int>? leaseTransitions;
  /// PreferredHolder signals to a lease holder that the lease has a more optimal holder and should be given up. This field can only be set if Strategy is also set.
  final pulumi.Input<String>? preferredHolder;
  /// renewTime is a time when the current holder of a lease has last updated the lease.
  final pulumi.Input<String>? renewTime;
  /// Strategy indicates the strategy for picking the leader for coordinated leader election. If the field is not specified, there is no active coordination for this lease. (Alpha) Using this field requires the CoordinatedLeaderElection feature gate to be enabled.
  final pulumi.Input<String>? strategy;

  /// Creates a new [LeaseSpecPatch].
  /// [acquireTime] acquireTime is a time when the current lease was acquired.
  /// [holderIdentity] holderIdentity contains the identity of the holder of a current lease. If Coordinated Leader Election is used, the holder identity must be equal to the elected LeaseCandidate.metadata.name field.
  /// [leaseDurationSeconds] leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measured against the time of last observed renewTime.
  /// [leaseTransitions] leaseTransitions is the number of transitions of a lease between holders.
  /// [preferredHolder] PreferredHolder signals to a lease holder that the lease has a more optimal holder and should be given up. This field can only be set if Strategy is also set.
  /// [renewTime] renewTime is a time when the current holder of a lease has last updated the lease.
  /// [strategy] Strategy indicates the strategy for picking the leader for coordinated leader election. If the field is not specified, there is no active coordination for this lease. (Alpha) Using this field requires the CoordinatedLeaderElection feature gate to be enabled.
  LeaseSpecPatch({
    this.acquireTime,
    this.holderIdentity,
    this.leaseDurationSeconds,
    this.leaseTransitions,
    this.preferredHolder,
    this.renewTime,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acquireTime': ?acquireTime,
      'holderIdentity': ?holderIdentity,
      'leaseDurationSeconds': ?leaseDurationSeconds,
      'leaseTransitions': ?leaseTransitions,
      'preferredHolder': ?preferredHolder,
      'renewTime': ?renewTime,
      'strategy': ?strategy,
    };
  }

  factory LeaseSpecPatch.fromMap(Map<String, dynamic> map) {
    return LeaseSpecPatch(
      acquireTime: map['acquireTime'] == null ? null : (map['acquireTime'] as String).input(),
      holderIdentity: map['holderIdentity'] == null ? null : (map['holderIdentity'] as String).input(),
      leaseDurationSeconds: map['leaseDurationSeconds'] == null ? null : (map['leaseDurationSeconds'] as int).input(),
      leaseTransitions: map['leaseTransitions'] == null ? null : (map['leaseTransitions'] as int).input(),
      preferredHolder: map['preferredHolder'] == null ? null : (map['preferredHolder'] as String).input(),
      renewTime: map['renewTime'] == null ? null : (map['renewTime'] as String).input(),
      strategy: map['strategy'] == null ? null : (map['strategy'] as String).input(),
    );
  }
}

