import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets a value indicating whether to enable dynamic memory or not.
enum DynamicMemoryEnabled implements pulumi.PulumiEnum<String> {
  valueFalse("false"),
  valueTrue("true");

  const DynamicMemoryEnabled(this.wireValue);
  @override
  final String wireValue;

  static DynamicMemoryEnabled fromValue(String value) {
    for (final item in DynamicMemoryEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicMemoryEnabled value: $value');
  }
}
