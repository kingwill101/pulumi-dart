import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server workload type.
enum SqlWorkloadType implements pulumi.PulumiEnum<String> {
  gENERAL("GENERAL"),
  oLTP("OLTP"),
  dW("DW");

  const SqlWorkloadType(this.wireValue);
  @override
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
