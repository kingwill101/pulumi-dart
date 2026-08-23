/// The type of JIT schedule.
enum JitSchedulingType {
  valueNotSpecified("NotSpecified"),
  valueOnce("Once"),
  valueRecurring("Recurring");

  const JitSchedulingType(this.wireValue);
  final String wireValue;

  static JitSchedulingType fromValue(String value) {
    for (final item in JitSchedulingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JitSchedulingType value: $value');
  }
}
