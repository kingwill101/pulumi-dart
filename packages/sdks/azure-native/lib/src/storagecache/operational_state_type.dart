import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage target operational state.
enum OperationalStateType implements pulumi.PulumiEnum<String> {
  valueReady("Ready"),
  valueBusy("Busy"),
  valueSuspended("Suspended"),
  valueFlushing("Flushing");

  const OperationalStateType(this.wireValue);
  @override
  final String wireValue;

  static OperationalStateType fromValue(String value) {
    for (final item in OperationalStateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationalStateType value: $value');
  }
}
