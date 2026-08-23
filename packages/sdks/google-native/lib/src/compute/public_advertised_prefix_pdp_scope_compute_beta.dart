/// Specifies how child public delegated prefix will be scoped. It could be one of following values: - `REGIONAL`: The public delegated prefix is regional only. The provisioning will take a few minutes. - `GLOBAL`: The public delegated prefix is global only. The provisioning will take ~4 weeks. - `GLOBAL_AND_REGIONAL` [output only]: The public delegated prefixes is BYOIP V1 legacy prefix. This is output only value and no longer supported in BYOIP V2.
enum PublicAdvertisedPrefixPdpScopeComputeBeta {
  global("GLOBAL"),
  globalAndRegional("GLOBAL_AND_REGIONAL"),
  regional("REGIONAL");

  const PublicAdvertisedPrefixPdpScopeComputeBeta(this.wireValue);
  final String wireValue;

  static PublicAdvertisedPrefixPdpScopeComputeBeta fromValue(String value) {
    for (final item in PublicAdvertisedPrefixPdpScopeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicAdvertisedPrefixPdpScopeComputeBeta value: $value');
  }
}
