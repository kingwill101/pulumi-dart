import 'package:pulumi/pulumi.dart' as pulumi;

/// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
enum RouterBgpAdvertiseModeComputeV1 implements pulumi.PulumiEnum<String> {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpAdvertiseModeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RouterBgpAdvertiseModeComputeV1 fromValue(String value) {
    for (final item in RouterBgpAdvertiseModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertiseModeComputeV1 value: $value');
  }
}
