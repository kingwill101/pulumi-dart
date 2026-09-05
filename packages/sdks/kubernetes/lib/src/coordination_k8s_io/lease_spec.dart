// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LeaseSpec is a specification of a Lease.
class LeaseSpec {
  /// acquireTime is a time when the current lease was acquired.
  final pulumi.Input<String?>? acquireTime;
  /// holderIdentity contains the identity of the holder of a current lease. If Coordinated Leader Election is used, the holder identity must be equal to the elected LeaseCandidate.metadata.name field.
  final pulumi.Input<String?>? holderIdentity;
  /// leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measured against the time of last observed renewTime.
  final pulumi.Input<int?>? leaseDurationSeconds;
  /// leaseTransitions is the number of transitions of a lease between holders.
  final pulumi.Input<int?>? leaseTransitions;
  /// preferredHolder signals to a lease holder that the lease has a more optimal holder and should be given up. This field can only be set if Strategy is also set.
  final pulumi.Input<String?>? preferredHolder;
  /// renewTime is a time when the current holder of a lease has last updated the lease.
  final pulumi.Input<String?>? renewTime;
  /// strategy indicates the strategy for picking the leader for coordinated leader election. If the field is not specified, there is no active coordination for this lease. (Alpha) Using this field requires the CoordinatedLeaderElection feature gate to be enabled.
  final pulumi.Input<String?>? strategy;

  /// Creates a new [LeaseSpec].
  /// [acquireTime] acquireTime is a time when the current lease was acquired.
  /// [holderIdentity] holderIdentity contains the identity of the holder of a current lease. If Coordinated Leader Election is used, the holder identity must be equal to the elected LeaseCandidate.metadata.name field.
  /// [leaseDurationSeconds] leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measured against the time of last observed renewTime.
  /// [leaseTransitions] leaseTransitions is the number of transitions of a lease between holders.
  /// [preferredHolder] preferredHolder signals to a lease holder that the lease has a more optimal holder and should be given up. This field can only be set if Strategy is also set.
  /// [renewTime] renewTime is a time when the current holder of a lease has last updated the lease.
  /// [strategy] strategy indicates the strategy for picking the leader for coordinated leader election. If the field is not specified, there is no active coordination for this lease. (Alpha) Using this field requires the CoordinatedLeaderElection feature gate to be enabled.
  const LeaseSpec({
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

  factory LeaseSpec.fromMap(Map<String, dynamic> map) {
    return LeaseSpec(
      acquireTime: (() { final guardedValue = map['acquireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      holderIdentity: (() { final guardedValue = map['holderIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      leaseDurationSeconds: (() { final guardedValue = map['leaseDurationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      leaseTransitions: (() { final guardedValue = map['leaseTransitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      preferredHolder: (() { final guardedValue = map['preferredHolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewTime: (() { final guardedValue = map['renewTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
