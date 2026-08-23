/// Storage workload type.
enum StorageWorkloadType {
  gENERAL("GENERAL"),
  oLTP("OLTP"),
  dW("DW");

  const StorageWorkloadType(this.wireValue);
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
