import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of JIT schedule.
enum JitSchedulingType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueOnce("Once"),
  valueRecurring("Recurring");

  const JitSchedulingType(this.wireValue);
  @override
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
