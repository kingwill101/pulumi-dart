// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LeaseSpec is a specification of a Lease.
class LeaseSpecPatchCoordinationK8sIoV1beta1 {
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

  /// Creates a new [LeaseSpecPatchCoordinationK8sIoV1beta1].
  /// [acquireTime] acquireTime is a time when the current lease was acquired.
  /// [holderIdentity] holderIdentity contains the identity of the holder of a current lease.
  /// [leaseDurationSeconds] leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
  /// [leaseTransitions] leaseTransitions is the number of transitions of a lease between holders.
  /// [renewTime] renewTime is a time when the current holder of a lease has last updated the lease.
  LeaseSpecPatchCoordinationK8sIoV1beta1({
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

  factory LeaseSpecPatchCoordinationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return LeaseSpecPatchCoordinationK8sIoV1beta1(
      acquireTime: map['acquireTime'] == null ? null : (map['acquireTime']! as String).input(),
      holderIdentity: map['holderIdentity'] == null ? null : (map['holderIdentity']! as String).input(),
      leaseDurationSeconds: map['leaseDurationSeconds'] == null ? null : (map['leaseDurationSeconds']! as int).input(),
      leaseTransitions: map['leaseTransitions'] == null ? null : (map['leaseTransitions']! as int).input(),
      renewTime: map['renewTime'] == null ? null : (map['renewTime']! as String).input(),
    );
  }
}

