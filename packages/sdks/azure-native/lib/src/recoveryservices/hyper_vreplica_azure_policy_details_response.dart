// ignore_for_file: unused_element, unnecessary_cast


/// Hyper-V Replica Azure specific protection profile details.
class HyperVReplicaAzurePolicyDetailsResponse {
  /// The active storage account Id.
  final String? activeStorageAccountId;
  /// The interval (in hours) at which Hyper-V Replica should create an application consistent snapshot within the VM.
  final int? applicationConsistentSnapshotFrequencyInHours;
  /// A value indicating whether encryption is enabled for virtual machines in this cloud.
  final String? encryption;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'HyperVReplicaAzure'.
  final String instanceType;
  /// The scheduled start time for the initial replication. If this parameter is Null, the initial replication starts immediately.
  final String? onlineReplicationStartTime;
  /// The duration (in hours) to which point the recovery history needs to be maintained.
  final int? recoveryPointHistoryDurationInHours;
  /// The replication interval.
  final int? replicationInterval;

  /// Creates a new [HyperVReplicaAzurePolicyDetailsResponse].
  /// [activeStorageAccountId] The active storage account Id.
  /// [applicationConsistentSnapshotFrequencyInHours] The interval (in hours) at which Hyper-V Replica should create an application consistent snapshot within the VM.
  /// [encryption] A value indicating whether encryption is enabled for virtual machines in this cloud.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [onlineReplicationStartTime] The scheduled start time for the initial replication. If this parameter is Null, the initial replication starts immediately.
  /// [recoveryPointHistoryDurationInHours] The duration (in hours) to which point the recovery history needs to be maintained.
  /// [replicationInterval] The replication interval.
  HyperVReplicaAzurePolicyDetailsResponse({
    this.activeStorageAccountId,
    this.applicationConsistentSnapshotFrequencyInHours,
    this.encryption,
    required this.instanceType,
    this.onlineReplicationStartTime,
    this.recoveryPointHistoryDurationInHours,
    this.replicationInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeStorageAccountId': ?activeStorageAccountId,
      'applicationConsistentSnapshotFrequencyInHours': ?applicationConsistentSnapshotFrequencyInHours,
      'encryption': ?encryption,
      'instanceType': instanceType,
      'onlineReplicationStartTime': ?onlineReplicationStartTime,
      'recoveryPointHistoryDurationInHours': ?recoveryPointHistoryDurationInHours,
      'replicationInterval': ?replicationInterval,
    };
  }

  factory HyperVReplicaAzurePolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaAzurePolicyDetailsResponse(
      activeStorageAccountId: map['activeStorageAccountId'] == null ? null : map['activeStorageAccountId'] as String,
      applicationConsistentSnapshotFrequencyInHours: map['applicationConsistentSnapshotFrequencyInHours'] == null ? null : map['applicationConsistentSnapshotFrequencyInHours'] as int,
      encryption: map['encryption'] == null ? null : map['encryption'] as String,
      instanceType: map['instanceType'] as String,
      onlineReplicationStartTime: map['onlineReplicationStartTime'] == null ? null : map['onlineReplicationStartTime'] as String,
      recoveryPointHistoryDurationInHours: map['recoveryPointHistoryDurationInHours'] == null ? null : map['recoveryPointHistoryDurationInHours'] as int,
      replicationInterval: map['replicationInterval'] == null ? null : map['replicationInterval'] as int,
    );
  }
}

