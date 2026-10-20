import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode in which Robo should run. Most clients should allow the server to populate this field automatically.
enum AndroidRoboTestRoboMode implements pulumi.PulumiEnum<String> {
  roboModeUnspecified("ROBO_MODE_UNSPECIFIED"),
  roboVersion1("ROBO_VERSION_1"),
  roboVersion2("ROBO_VERSION_2");

  const AndroidRoboTestRoboMode(this.wireValue);
  @override
  final String wireValue;

  static AndroidRoboTestRoboMode fromValue(String value) {
    for (final item in AndroidRoboTestRoboMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AndroidRoboTestRoboMode value: $value');
  }
}
