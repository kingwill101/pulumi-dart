/// Public Certificate Location
enum PublicCertificateLocation {
  valueCurrentUserMy("CurrentUserMy"),
  valueLocalMachineMy("LocalMachineMy"),
  valueUnknown("Unknown");

  const PublicCertificateLocation(this.wireValue);
  final String wireValue;

  static PublicCertificateLocation fromValue(String value) {
    for (final item in PublicCertificateLocation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicCertificateLocation value: $value');
  }
}
