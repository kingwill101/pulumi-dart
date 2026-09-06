import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies refill policy of the pool.
enum RefillPolicy implements pulumi.PulumiEnum<String> {
  always("always");

  const RefillPolicy(this.wireValue);
  @override
  final String wireValue;

  static RefillPolicy fromValue(String value) {
    for (final item in RefillPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RefillPolicy value: $value');
  }
}
