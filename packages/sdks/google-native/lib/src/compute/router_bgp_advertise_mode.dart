import 'package:pulumi/pulumi.dart' as pulumi;

/// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
enum RouterBgpAdvertiseMode implements pulumi.PulumiEnum<String> {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpAdvertiseMode(this.wireValue);
  @override
  final String wireValue;

  static RouterBgpAdvertiseMode fromValue(String value) {
    for (final item in RouterBgpAdvertiseMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertiseMode value: $value');
  }
}
