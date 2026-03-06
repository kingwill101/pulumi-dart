// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LeaseSpec is a specification of a Lease.
class LeaseSpecCoordinationK8sIoV1beta1 {
  /// acquireTime is a time when the current lease was acquired.
  final pulumi.Input<String>? acquireTime;
  /// holderIdentity contains the identity of the holder of a current lease.
  final pulumi.Input<String>? holderIdentity;
  /// leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
  final pulumi.Input<int>? leaseDurationSeconds;
  /// leaseTransitions is the number of transitions of a lease between holders.
  final pulumi.Input<int>? leaseTransitions;
  /// renewTime is a time when the current holder of a lease has last updated the lease.
  final pulumi.Input<String>? renewTime;

  /// Creates a new [LeaseSpecCoordinationK8sIoV1beta1].
  /// [acquireTime] acquireTime is a time when the current lease was acquired.
  /// [holderIdentity] holderIdentity contains the identity of the holder of a current lease.
  /// [leaseDurationSeconds] leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
  /// [leaseTransitions] leaseTransitions is the number of transitions of a lease between holders.
  /// [renewTime] renewTime is a time when the current holder of a lease has last updated the lease.
  const LeaseSpecCoordinationK8sIoV1beta1({
    this.acquireTime,
    this.holderIdentity,
    this.leaseDurationSeconds,
    this.leaseTransitions,
    this.renewTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acquireTime': ?acquireTime,
      'holderIdentity': ?holderIdentity,
      'leaseDurationSeconds': ?leaseDurationSeconds,
      'leaseTransitions': ?leaseTransitions,
      'renewTime': ?renewTime,
    };
  }

  factory LeaseSpecCoordinationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return LeaseSpecCoordinationK8sIoV1beta1(
      acquireTime: (() { final guardedValue = map['acquireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      holderIdentity: (() { final guardedValue = map['holderIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      leaseDurationSeconds: (() { final guardedValue = map['leaseDurationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      leaseTransitions: (() { final guardedValue = map['leaseTransitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      renewTime: (() { final guardedValue = map['renewTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

