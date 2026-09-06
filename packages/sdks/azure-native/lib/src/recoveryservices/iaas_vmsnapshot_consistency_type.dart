import 'package:pulumi/pulumi.dart' as pulumi;

enum IaasVMSnapshotConsistencyType implements pulumi.PulumiEnum<String> {
  valueOnlyCrashConsistent("OnlyCrashConsistent");

  const IaasVMSnapshotConsistencyType(this.wireValue);
  @override
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
