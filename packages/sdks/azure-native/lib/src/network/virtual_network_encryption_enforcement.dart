/// If the encrypted VNet allows VM that does not support encryption. This field is for future support, AllowUnencrypted is the only supported value at general availability.
enum VirtualNetworkEncryptionEnforcement {
  valueDropUnencrypted("DropUnencrypted"),
  valueAllowUnencrypted("AllowUnencrypted");

  const VirtualNetworkEncryptionEnforcement(this.wireValue);
  final String wireValue;

  static VirtualNetworkEncryptionEnforcement fromValue(String value) {
    for (final item in VirtualNetworkEncryptionEnforcement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkEncryptionEnforcement value: $value');
  }
}
