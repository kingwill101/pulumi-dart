import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of data that can be assigned to the label.
enum LabelDescriptorValueType implements pulumi.PulumiEnum<String> {
  string_("STRING"),
  bool_("BOOL"),
  int64("INT64");

  const LabelDescriptorValueType(this.wireValue);
  @override
  final String wireValue;

  static LabelDescriptorValueType fromValue(String value) {
    for (final item in LabelDescriptorValueType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LabelDescriptorValueType value: $value');
  }
}
