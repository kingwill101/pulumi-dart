enum ReplicationProtectedItemOperation {
  valueReverseReplicate("ReverseReplicate"),
  valueCommit("Commit"),
  valuePlannedFailover("PlannedFailover"),
  valueUnplannedFailover("UnplannedFailover"),
  valueDisableProtection("DisableProtection"),
  valueTestFailover("TestFailover"),
  valueTestFailoverCleanup("TestFailoverCleanup"),
  valueFailback("Failback"),
  valueFinalizeFailback("FinalizeFailback"),
  valueCancelFailover("CancelFailover"),
  valueChangePit("ChangePit"),
  valueRepairReplication("RepairReplication"),
  valueSwitchProtection("SwitchProtection"),
  valueCompleteMigration("CompleteMigration");

  const ReplicationProtectedItemOperation(this.wireValue);
  final String wireValue;

  static ReplicationProtectedItemOperation fromValue(String value) {
    for (final item in ReplicationProtectedItemOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationProtectedItemOperation value: $value');
  }
}

