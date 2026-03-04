// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicationRecoveryPlanAzureToAzureSettings {
  /// The Edge Zone within the Azure Region where the VM exists. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  final pulumi.Input<String>? primaryEdgeZone;

  /// The Availability Zone in which the VM is located. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  final pulumi.Input<String>? primaryZone;

  /// The Edge Zone within the Azure Region where the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  ///
  /// &gt; **Note:** `primary_edge_zone` and `recovery_edge_zone` must be specified together.
  final pulumi.Input<String>? recoveryEdgeZone;

  /// The Availability Zone in which the VM is recovered. Changing this forces a new Site Recovery Replication Recovery Plan to be created.
  ///
  /// &gt; **Note:** `primary_zone` and `recovery_zone` must be specified together.
  final pulumi.Input<String>? recoveryZone;

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

  factory ReplicationRecoveryPlanAzureToAzureSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReplicationRecoveryPlanAzureToAzureSettings(
      primaryEdgeZone: (() {
        final guardedValue = map['primaryEdgeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryZone: (() {
        final guardedValue = map['primaryZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryEdgeZone: (() {
        final guardedValue = map['recoveryEdgeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryZone: (() {
        final guardedValue = map['recoveryZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
