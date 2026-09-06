import 'package:pulumi/pulumi.dart' as pulumi;

/// The message scope.
enum MessageScope implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  registeredSubscriptions("RegisteredSubscriptions");

  const MessageScope(this.wireValue);
  @override
  final String wireValue;

  static MessageScope fromValue(String value) {
    for (final item in MessageScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageScope value: $value');
  }
}
