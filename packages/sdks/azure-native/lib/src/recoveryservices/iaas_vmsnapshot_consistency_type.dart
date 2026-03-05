enum IaasVMSnapshotConsistencyType {
  valueOnlyCrashConsistent("OnlyCrashConsistent");

  const IaasVMSnapshotConsistencyType(this.wireValue);
  final String wireValue;

  static IaasVMSnapshotConsistencyType fromValue(String value) {
    for (final item in IaasVMSnapshotConsistencyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IaasVMSnapshotConsistencyType value: $value');
  }
}

