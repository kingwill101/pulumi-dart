import 'package:pulumi/pulumi.dart' as pulumi;

/// A description of why the `status` has its value
enum StatusReason implements pulumi.PulumiEnum<String> {
  expired("Expired"),
  userRequested("UserRequested"),
  newerRequestInitiated("NewerRequestInitiated");

  const StatusReason(this.wireValue);
  @override
  final String wireValue;

  static StatusReason fromValue(String value) {
    for (final item in StatusReason.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusReason value: $value');
  }
}
