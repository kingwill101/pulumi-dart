/// SQL Server workload type.
enum SqlWorkloadType {
  gENERAL("GENERAL"),
  oLTP("OLTP"),
  dW("DW");

  const SqlWorkloadType(this.wireValue);
  final String wireValue;

  static SqlWorkloadType fromValue(String value) {
    for (final item in SqlWorkloadType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlWorkloadType value: $value');
  }
}

