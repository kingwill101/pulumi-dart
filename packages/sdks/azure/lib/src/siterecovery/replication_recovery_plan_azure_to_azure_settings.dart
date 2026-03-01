// ignore_for_file: unused_element, unnecessary_cast


class ReplicationRecoveryPlanAzureToAzureSettings {
  /// The Edge Zone within the Azure Region where the VM exists. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  final String? primaryEdgeZone;
  /// The Availability Zone in which the VM is located. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  final String? primaryZone;
  /// The Edge Zone within the Azure Region where the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  ///
  /// > **Note:** `primary_edge_zone` and `recovery_edge_zone` must be specified together.
  final String? recoveryEdgeZone;
  /// The Availability Zone in which the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  ///
  /// > **Note:** `primary_zone` and `recovery_zone` must be specified together.
  final String? recoveryZone;

  /// Creates a new [ReplicationRecoveryPlanAzureToAzureSettings].
  /// [primaryEdgeZone] The Edge Zone within the Azure Region where the VM exists. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  /// [primaryZone] The Availability Zone in which the VM is located. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  /// [recoveryEdgeZone] The Edge Zone within the Azure Region where the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  /// [recoveryZone] The Availability Zone in which the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  ReplicationRecoveryPlanAzureToAzureSettings({
    this.primaryEdgeZone,
    this.primaryZone,
    this.recoveryEdgeZone,
    this.recoveryZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryEdgeZone': ?primaryEdgeZone,
      'primaryZone': ?primaryZone,
      'recoveryEdgeZone': ?recoveryEdgeZone,
      'recoveryZone': ?recoveryZone,
    };
  }

  factory ReplicationRecoveryPlanAzureToAzureSettings.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanAzureToAzureSettings(
      primaryEdgeZone: map['primaryEdgeZone'] == null ? null : map['primaryEdgeZone'] as String,
      primaryZone: map['primaryZone'] == null ? null : map['primaryZone'] as String,
      recoveryEdgeZone: map['recoveryEdgeZone'] == null ? null : map['recoveryEdgeZone'] as String,
      recoveryZone: map['recoveryZone'] == null ? null : map['recoveryZone'] as String,
    );
  }
}

