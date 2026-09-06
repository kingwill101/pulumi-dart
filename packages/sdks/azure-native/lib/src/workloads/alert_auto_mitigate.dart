import 'package:pulumi/pulumi.dart' as pulumi;

/// The value that indicates whether the alert should be automatically resolved or not. The default is Disable.
enum AlertAutoMitigate implements pulumi.PulumiEnum<String> {
  enable("Enable"),
  disable("Disable");

  const AlertAutoMitigate(this.wireValue);
  @override
  final String wireValue;

  static AlertAutoMitigate fromValue(String value) {
    for (final item in AlertAutoMitigate.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertAutoMitigate value: $value');
  }
}
