/// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
enum RouterBgpAdvertiseModeComputeBeta {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpAdvertiseModeComputeBeta(this.wireValue);
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

