import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Enum to set the option defining the datatypes numeric filter has to be applied to
enum SourceNumericFilterNumericFilterOption implements pulumi.PulumiEnum<String> {
  numericFilterOptionUnspecified("NUMERIC_FILTER_OPTION_UNSPECIFIED"),
  numericFilterOptionAll("NUMERIC_FILTER_OPTION_ALL"),
  numericFilterOptionLimit("NUMERIC_FILTER_OPTION_LIMIT"),
  numericFilterOptionLimitless("NUMERIC_FILTER_OPTION_LIMITLESS");

  const SourceNumericFilterNumericFilterOption(this.wireValue);
  @override
  final String wireValue;

  static SourceNumericFilterNumericFilterOption fromValue(String value) {
    for (final item in SourceNumericFilterNumericFilterOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceNumericFilterNumericFilterOption value: $value');
  }
}
