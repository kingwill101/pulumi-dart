/// The type of JIT schedule.
enum JitSchedulingType {
  valueNotSpecified("NotSpecified"),
  valueOnce("Once"),
  valueRecurring("Recurring");

  const JitSchedulingType(this.value);
  final String value;

  static JitSchedulingType fromValue(String value) {
    for (final item in JitSchedulingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JitSchedulingType value: $value');
  }
}

