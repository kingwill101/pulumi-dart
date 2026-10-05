import 'package:pulumi/pulumi.dart' as pulumi;

/// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
enum RouterBgpAdvertiseModeComputeBeta implements pulumi.PulumiEnum<String> {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpAdvertiseModeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RouterBgpAdvertiseModeComputeBeta fromValue(String value) {
    for (final item in RouterBgpAdvertiseModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertiseModeComputeBeta value: $value');
  }
}
