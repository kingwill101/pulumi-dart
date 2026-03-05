/// The security provider name.
enum SecurityProviderName {
  valueZScaler("ZScaler"),
  valueIBoss("IBoss"),
  valueCheckpoint("Checkpoint");

  const SecurityProviderName(this.wireValue);
  final String wireValue;

  static SecurityProviderName fromValue(String value) {
    for (final item in SecurityProviderName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityProviderName value: $value');
  }
}

