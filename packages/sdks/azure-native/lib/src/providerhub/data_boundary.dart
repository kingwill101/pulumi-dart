import 'package:pulumi/pulumi.dart' as pulumi;

/// The data boundary.
enum DataBoundary implements pulumi.PulumiEnum<String> {
  notDefined("NotDefined"),
  global("Global"),
  eU("EU"),
  uS("US");

  const DataBoundary(this.wireValue);
  @override
  final String wireValue;

  static DataBoundary fromValue(String value) {
    for (final item in DataBoundary.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataBoundary value: $value');
  }
}
