import 'package:pulumi/pulumi.dart' as pulumi;

/// Replica readable secondary mode in availability group.
enum ReadableSecondary implements pulumi.PulumiEnum<String> {
  no("No"),
  all("All"),
  readOnly("Read_Only");

  const ReadableSecondary(this.wireValue);
  @override
  final String wireValue;

  static ReadableSecondary fromValue(String value) {
    for (final item in ReadableSecondary.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadableSecondary value: $value');
  }
}
