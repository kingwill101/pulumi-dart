/// Storage target operational state.
enum OperationalStateType {
  valueReady("Ready"),
  valueBusy("Busy"),
  valueSuspended("Suspended"),
  valueFlushing("Flushing");

  const OperationalStateType(this.wireValue);
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
