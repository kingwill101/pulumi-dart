import 'package:pulumi/pulumi.dart' as pulumi;

/// Serving status of this application.
enum AppServingStatusAppengineV1beta implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  serving("SERVING"),
  userDisabled("USER_DISABLED"),
  systemDisabled("SYSTEM_DISABLED");

  const AppServingStatusAppengineV1beta(this.wireValue);
  @override
  final String wireValue;

  static AppServingStatusAppengineV1beta fromValue(String value) {
    for (final item in AppServingStatusAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppServingStatusAppengineV1beta value: $value');
  }
}
