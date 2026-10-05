import 'package:pulumi/pulumi.dart' as pulumi;

/// Serving status of this application.
enum AppServingStatus implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  serving("SERVING"),
  userDisabled("USER_DISABLED"),
  systemDisabled("SYSTEM_DISABLED");

  const AppServingStatus(this.wireValue);
  @override
  final String wireValue;

  static AppServingStatus fromValue(String value) {
    for (final item in AppServingStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppServingStatus value: $value');
  }
}
