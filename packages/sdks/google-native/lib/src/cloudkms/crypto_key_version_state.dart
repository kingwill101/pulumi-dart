/// The current state of the CryptoKeyVersion.
enum CryptoKeyVersionState {
  cryptoKeyVersionStateUnspecified("CRYPTO_KEY_VERSION_STATE_UNSPECIFIED"),
  pendingGeneration("PENDING_GENERATION"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  destroyed("DESTROYED"),
  destroyScheduled("DESTROY_SCHEDULED"),
  pendingImport("PENDING_IMPORT"),
  importFailed("IMPORT_FAILED"),
  generationFailed("GENERATION_FAILED"),
  pendingExternalDestruction("PENDING_EXTERNAL_DESTRUCTION"),
  externalDestructionFailed("EXTERNAL_DESTRUCTION_FAILED");

  const CryptoKeyVersionState(this.wireValue);
  final String wireValue;

  static CryptoKeyVersionState fromValue(String value) {
    for (final item in CryptoKeyVersionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CryptoKeyVersionState value: $value');
  }
}
