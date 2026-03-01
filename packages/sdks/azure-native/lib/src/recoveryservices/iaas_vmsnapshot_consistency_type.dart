enum IaasVMSnapshotConsistencyType {
  valueOnlyCrashConsistent("OnlyCrashConsistent");

  const IaasVMSnapshotConsistencyType(this.value);
  final String value;

  static IaasVMSnapshotConsistencyType fromValue(String value) {
    for (final item in IaasVMSnapshotConsistencyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IaasVMSnapshotConsistencyType value: $value');
  }
}

