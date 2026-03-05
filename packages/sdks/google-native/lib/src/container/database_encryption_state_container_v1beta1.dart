/// The desired state of etcd encryption.
enum DatabaseEncryptionStateContainerV1beta1 {
  unknown("UNKNOWN"),
  encrypted("ENCRYPTED"),
  decrypted("DECRYPTED");

  const DatabaseEncryptionStateContainerV1beta1(this.wireValue);
  final String wireValue;

  static DatabaseEncryptionStateContainerV1beta1 fromValue(String value) {
    for (final item in DatabaseEncryptionStateContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseEncryptionStateContainerV1beta1 value: $value');
  }
}

