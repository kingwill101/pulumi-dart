// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationPolicy.
class GetReplicationPolicyResult {
  /// Specifies the frequency (in minutes) at which to create application consistent recovery.
  final int? applicationConsistentSnapshotFrequencyInMinutes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The duration in minutes for which the recovery points need to be stored.
  final int? recoveryPointRetentionInMinutes;
  final String? recoveryVaultName;
  final String? resourceGroupName;

  /// Creates a new [GetReplicationPolicyResult].
  /// [applicationConsistentSnapshotFrequencyInMinutes] Specifies the frequency (in minutes) at which to create application consistent recovery.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [recoveryPointRetentionInMinutes] The duration in minutes for which the recovery points need to be stored.
  /// [recoveryVaultName] Optional.
  /// [resourceGroupName] Optional.
  const GetReplicationPolicyResult({
    this.applicationConsistentSnapshotFrequencyInMinutes,
    this.id,
    this.name,
    this.recoveryPointRetentionInMinutes,
    this.recoveryVaultName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInMinutes': ?applicationConsistentSnapshotFrequencyInMinutes,
      'id': ?id,
      'name': ?name,
      'recoveryPointRetentionInMinutes': ?recoveryPointRetentionInMinutes,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetReplicationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationPolicyResult(
      applicationConsistentSnapshotFrequencyInMinutes: (() { final guardedValue = map['applicationConsistentSnapshotFrequencyInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoveryPointRetentionInMinutes: (() { final guardedValue = map['recoveryPointRetentionInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      recoveryVaultName: (() { final guardedValue = map['recoveryVaultName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
