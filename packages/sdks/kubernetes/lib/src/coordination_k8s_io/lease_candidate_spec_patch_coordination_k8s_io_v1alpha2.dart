// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LeaseCandidateSpec is a specification of a Lease.
class LeaseCandidateSpecPatchCoordinationK8sIoV1alpha2 {
  /// binaryVersion is the binary version. It must be in a semver format without leading `v`. This field is required.
  final pulumi.Input<String?>? binaryVersion;
  /// emulationVersion is the emulation version. It must be in a semver format without leading `v`. EmulationVersion must be less than or equal to BinaryVersion. This field is required when strategy is "OldestEmulationVersion"
  final pulumi.Input<String?>? emulationVersion;
  /// leaseName is the name of the lease for which this candidate is contending. This field is immutable.
  final pulumi.Input<String?>? leaseName;
  /// pingTime is the last time that the server has requested the LeaseCandidate to renew. It is only done during leader election to check if any LeaseCandidates have become ineligible. When PingTime is updated, the LeaseCandidate will respond by updating RenewTime.
  final pulumi.Input<String?>? pingTime;
  /// renewTime is the time that the LeaseCandidate was last updated. Any time a Lease needs to do leader election, the PingTime field is updated to signal to the LeaseCandidate that they should update the RenewTime. Old LeaseCandidate objects are also garbage collected if it has been hours since the last renew. The PingTime field is updated regularly to prevent garbage collection for still active LeaseCandidates.
  final pulumi.Input<String?>? renewTime;
  /// strategy is the strategy that coordinated leader election will use for picking the leader. If multiple candidates for the same Lease return different strategies, the strategy provided by the candidate with the latest BinaryVersion will be used. If there is still conflict, this is a user error and coordinated leader election will not operate the Lease until resolved.
  final pulumi.Input<String?>? strategy;

  /// Creates a new [LeaseCandidateSpecPatchCoordinationK8sIoV1alpha2].
  /// [binaryVersion] binaryVersion is the binary version. It must be in a semver format without leading `v`. This field is required.
  /// [emulationVersion] emulationVersion is the emulation version. It must be in a semver format without leading `v`. EmulationVersion must be less than or equal to BinaryVersion. This field is required when strategy is "OldestEmulationVersion"
  /// [leaseName] leaseName is the name of the lease for which this candidate is contending. This field is immutable.
  /// [pingTime] pingTime is the last time that the server has requested the LeaseCandidate to renew. It is only done during leader election to check if any LeaseCandidates have become ineligible. When PingTime is updated, the LeaseCandidate will respond by updating RenewTime.
  /// [renewTime] renewTime is the time that the LeaseCandidate was last updated. Any time a Lease needs to do leader election, the PingTime field is updated to signal to the LeaseCandidate that they should update the RenewTime. Old LeaseCandidate objects are also garbage collected if it has been hours since the last renew. The PingTime field is updated regularly to prevent garbage collection for still active LeaseCandidates.
  /// [strategy] strategy is the strategy that coordinated leader election will use for picking the leader. If multiple candidates for the same Lease return different strategies, the strategy provided by the candidate with the latest BinaryVersion will be used. If there is still conflict, this is a user error and coordinated leader election will not operate the Lease until resolved.
  const LeaseCandidateSpecPatchCoordinationK8sIoV1alpha2({
    this.binaryVersion,
    this.emulationVersion,
    this.leaseName,
    this.pingTime,
    this.renewTime,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryVersion': ?binaryVersion,
      'emulationVersion': ?emulationVersion,
      'leaseName': ?leaseName,
      'pingTime': ?pingTime,
      'renewTime': ?renewTime,
      'strategy': ?strategy,
    };
  }

  factory LeaseCandidateSpecPatchCoordinationK8sIoV1alpha2.fromMap(Map<String, dynamic> map) {
    return LeaseCandidateSpecPatchCoordinationK8sIoV1alpha2(
      binaryVersion: (() { final guardedValue = map['binaryVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emulationVersion: (() { final guardedValue = map['emulationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      leaseName: (() { final guardedValue = map['leaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pingTime: (() { final guardedValue = map['pingTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewTime: (() { final guardedValue = map['renewTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
