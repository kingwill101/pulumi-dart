enum InterconnectRequestedFeaturesItem {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItem(this.wireValue);
  final String wireValue;

  static InterconnectRequestedFeaturesItem fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InterconnectRequestedFeaturesItem value: $value',
    );
  }
}
