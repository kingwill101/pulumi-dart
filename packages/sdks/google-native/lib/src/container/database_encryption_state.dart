/// The desired state of etcd encryption.
enum DatabaseEncryptionState {
  unknown("UNKNOWN"),
  encrypted("ENCRYPTED"),
  decrypted("DECRYPTED");

  const DatabaseEncryptionState(this.wireValue);
  final String wireValue;

  static DatabaseEncryptionState fromValue(String value) {
    for (final item in DatabaseEncryptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseEncryptionState value: $value');
  }
}
