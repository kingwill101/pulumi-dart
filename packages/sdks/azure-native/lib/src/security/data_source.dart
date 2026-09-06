import 'package:pulumi/pulumi.dart' as pulumi;

enum DataSource implements pulumi.PulumiEnum<String> {
  twinData("TwinData");

  const DataSource(this.wireValue);
  @override
  final String wireValue;

  static DataSource fromValue(String value) {
    for (final item in DataSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSource value: $value');
  }
}
