import 'package:pulumi/pulumi.dart' as pulumi;

enum Logging implements pulumi.PulumiEnum<String> {
  stdout("stdout"),
  stderr("stderr"),
  stdoutAndStderr("stdoutAndStderr"),
  none("none");

  const Logging(this.wireValue);
  @override
  final String wireValue;

  static Logging fromValue(String value) {
    for (final item in Logging.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Logging value: $value');
  }
}
