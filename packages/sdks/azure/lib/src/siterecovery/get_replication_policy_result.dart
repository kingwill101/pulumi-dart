// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationPolicy.
class GetReplicationPolicyResult {
  /// Specifies the frequency (in minutes) at which to create application consistent recovery.
  final int applicationConsistentSnapshotFrequencyInMinutes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The duration in minutes for which the recovery points need to be stored.
  final int recoveryPointRetentionInMinutes;
  final String recoveryVaultName;
  final String resourceGroupName;

  /// Creates a new [GetReplicationPolicyResult].
  /// [applicationConsistentSnapshotFrequencyInMinutes] Specifies the frequency (in minutes) at which to create application consistent recovery.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [recoveryPointRetentionInMinutes] The duration in minutes for which the recovery points need to be stored.
  /// [recoveryVaultName] Required.
  /// [resourceGroupName] Required.
  GetReplicationPolicyResult({
    required this.applicationConsistentSnapshotFrequencyInMinutes,
    required this.id,
    required this.name,
    required this.recoveryPointRetentionInMinutes,
    required this.recoveryVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInMinutes': applicationConsistentSnapshotFrequencyInMinutes,
      'id': id,
      'name': name,
      'recoveryPointRetentionInMinutes': recoveryPointRetentionInMinutes,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetReplicationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationPolicyResult(
      applicationConsistentSnapshotFrequencyInMinutes: map['applicationConsistentSnapshotFrequencyInMinutes'] as int,
      id: map['id'] as String,
      name: map['name'] as String,
      recoveryPointRetentionInMinutes: map['recoveryPointRetentionInMinutes'] as int,
      recoveryVaultName: map['recoveryVaultName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

