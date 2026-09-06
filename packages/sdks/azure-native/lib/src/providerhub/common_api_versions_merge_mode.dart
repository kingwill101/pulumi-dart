import 'package:pulumi/pulumi.dart' as pulumi;

/// Common api versions merge mode.
enum CommonApiVersionsMergeMode implements pulumi.PulumiEnum<String> {
  merge("Merge"),
  overwrite("Overwrite");

  const CommonApiVersionsMergeMode(this.wireValue);
  @override
  final String wireValue;

  static CommonApiVersionsMergeMode fromValue(String value) {
    for (final item in CommonApiVersionsMergeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommonApiVersionsMergeMode value: $value');
  }
}
