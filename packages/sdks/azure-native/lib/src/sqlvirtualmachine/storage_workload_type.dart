import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage workload type.
enum StorageWorkloadType implements pulumi.PulumiEnum<String> {
  gENERAL("GENERAL"),
  oLTP("OLTP"),
  dW("DW");

  const StorageWorkloadType(this.wireValue);
  @override
  final String wireValue;

  static StorageWorkloadType fromValue(String value) {
    for (final item in StorageWorkloadType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageWorkloadType value: $value');
  }
}
