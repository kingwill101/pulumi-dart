import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy.
enum Policy implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  synchronizeBeginExtension("SynchronizeBeginExtension");

  const Policy(this.wireValue);
  @override
  final String wireValue;

  static Policy fromValue(String value) {
    for (final item in Policy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Policy value: $value');
  }
}
