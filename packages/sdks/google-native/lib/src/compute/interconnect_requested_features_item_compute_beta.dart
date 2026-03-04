enum InterconnectRequestedFeaturesItemComputeBeta {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItemComputeBeta(this.wireValue);
  final String wireValue;

  static InterconnectRequestedFeaturesItemComputeBeta fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItemComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InterconnectRequestedFeaturesItemComputeBeta value: $value',
    );
  }
}
