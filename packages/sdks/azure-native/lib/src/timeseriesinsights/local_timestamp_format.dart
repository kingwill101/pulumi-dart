import 'package:pulumi/pulumi.dart' as pulumi;

/// An enum that represents the format of the local timestamp property that needs to be set.
enum LocalTimestampFormat implements pulumi.PulumiEnum<String> {
  valueEmbedded("Embedded");

  const LocalTimestampFormat(this.wireValue);
  @override
  final String wireValue;

  static LocalTimestampFormat fromValue(String value) {
    for (final item in LocalTimestampFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalTimestampFormat value: $value');
  }
}
