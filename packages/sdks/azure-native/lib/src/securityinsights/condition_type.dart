import 'package:pulumi/pulumi.dart' as pulumi;

enum ConditionType implements pulumi.PulumiEnum<String> {
  valueProperty("Property"),
  valuePropertyArray("PropertyArray"),
  valuePropertyChanged("PropertyChanged"),
  valuePropertyArrayChanged("PropertyArrayChanged"),
  valueBoolean("Boolean");

  const ConditionType(this.wireValue);
  @override
  final String wireValue;

  static ConditionType fromValue(String value) {
    for (final item in ConditionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionType value: $value');
  }
}
