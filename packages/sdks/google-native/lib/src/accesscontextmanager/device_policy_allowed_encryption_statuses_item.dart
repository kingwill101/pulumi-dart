enum DevicePolicyAllowedEncryptionStatusesItem {
  encryptionUnspecified("ENCRYPTION_UNSPECIFIED"),
  encryptionUnsupported("ENCRYPTION_UNSUPPORTED"),
  unencrypted("UNENCRYPTED"),
  encrypted("ENCRYPTED");

  const DevicePolicyAllowedEncryptionStatusesItem(this.value);
  final String value;

  static DevicePolicyAllowedEncryptionStatusesItem fromValue(String value) {
    for (final item in DevicePolicyAllowedEncryptionStatusesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevicePolicyAllowedEncryptionStatusesItem value: $value');
  }
}

