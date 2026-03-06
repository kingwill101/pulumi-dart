// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LeaseCandidateSpec is a specification of a Lease.
class LeaseCandidateSpecPatch {
  /// BinaryVersion is the binary version. It must be in a semver format without leading `v`. This field is required when strategy is "OldestEmulationVersion"
  final pulumi.Input<String>? binaryVersion;
  /// EmulationVersion is the emulation version. It must be in a semver format without leading `v`. EmulationVersion must be less than or equal to BinaryVersion. This field is required when strategy is "OldestEmulationVersion"
  final pulumi.Input<String>? emulationVersion;
  /// LeaseName is the name of the lease for which this candidate is contending. This field is immutable.
  final pulumi.Input<String>? leaseName;
  /// PingTime is the last time that the server has requested the LeaseCandidate to renew. It is only done during leader election to check if any LeaseCandidates have become ineligible. When PingTime is updated, the LeaseCandidate will respond by updating RenewTime.
  final pulumi.Input<String>? pingTime;
  /// PreferredStrategies indicates the list of strategies for picking the leader for coordinated leader election. The list is ordered, and the first strategy supersedes all other strategies. The list is used by coordinated leader election to make a decision about the final election strategy. This follows as - If all clients have strategy X as the first element in this list, strategy X will be used. - If a candidate has strategy [X] and another candidate has strategy [Y, X], Y supersedes X and strategy Y
  /// will be used.
  /// - If a candidate has strategy [X, Y] and another candidate has strategy [Y, X], this is a user error and leader
  /// election will not operate the Lease until resolved.
  /// (Alpha) Using this field requires the CoordinatedLeaderElection feature gate to be enabled.
  final pulumi.Input<List<String>>? preferredStrategies;
  /// RenewTime is the time that the LeaseCandidate was last updated. Any time a Lease needs to do leader election, the PingTime field is updated to signal to the LeaseCandidate that they should update the RenewTime. Old LeaseCandidate objects are also garbage collected if it has been hours since the last renew. The PingTime field is updated regularly to prevent garbage collection for still active LeaseCandidates.
  final pulumi.Input<String>? renewTime;

  /// Creates a new [LeaseCandidateSpecPatch].
  /// [binaryVersion] BinaryVersion is the binary version. It must be in a semver format without leading `v`. This field is required when strategy is "OldestEmulationVersion"
  /// [emulationVersion] EmulationVersion is the emulation version. It must be in a semver format without leading `v`. EmulationVersion must be less than or equal to BinaryVersion. This field is required when strategy is "OldestEmulationVersion"
  /// [leaseName] LeaseName is the name of the lease for which this candidate is contending. This field is immutable.
  /// [pingTime] PingTime is the last time that the server has requested the LeaseCandidate to renew. It is only done during leader election to check if any LeaseCandidates have become ineligible. When PingTime is updated, the LeaseCandidate will respond by updating RenewTime.
  /// [preferredStrategies] PreferredStrategies indicates the list of strategies for picking the leader for coordinated leader election. The list is ordered, and the first strategy supersedes all other strategies. The list is used by coordinated leader election to make a decision about the final election strategy. This follows as - If all clients have strategy X as the first element in this list, strategy X will be used. - If a candidate has strategy [X] and another candidate has strategy [Y, X], Y supersedes X and strategy Y
  /// [renewTime] RenewTime is the time that the LeaseCandidate was last updated. Any time a Lease needs to do leader election, the PingTime field is updated to signal to the LeaseCandidate that they should update the RenewTime. Old LeaseCandidate objects are also garbage collected if it has been hours since the last renew. The PingTime field is updated regularly to prevent garbage collection for still active LeaseCandidates.
  const LeaseCandidateSpecPatch({
    this.binaryVersion,
    this.emulationVersion,
    this.leaseName,
    this.pingTime,
    this.preferredStrategies,
    this.renewTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryVersion': ?binaryVersion,
      'emulationVersion': ?emulationVersion,
      'leaseName': ?leaseName,
      'pingTime': ?pingTime,
      'preferredStrategies': ?preferredStrategies,
      'renewTime': ?renewTime,
    };
  }

  factory LeaseCandidateSpecPatch.fromMap(Map<String, dynamic> map) {
    return LeaseCandidateSpecPatch(
      binaryVersion: (() { final guardedValue = map['binaryVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emulationVersion: (() { final guardedValue = map['emulationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      leaseName: (() { final guardedValue = map['leaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pingTime: (() { final guardedValue = map['pingTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredStrategies: (() { final guardedValue = map['preferredStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      renewTime: (() { final guardedValue = map['renewTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

