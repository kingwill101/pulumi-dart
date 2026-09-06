import 'package:pulumi/pulumi.dart' as pulumi;

/// The time cursor used in Summary rules bins processing, e.g. TimeGenerated.
enum TimeSelectorEnum implements pulumi.PulumiEnum<String> {
  timeGenerated("TimeGenerated");

  const TimeSelectorEnum(this.wireValue);
  @override
  final String wireValue;

  static TimeSelectorEnum fromValue(String value) {
    for (final item in TimeSelectorEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeSelectorEnum value: $value');
  }
}
