enum DatabaseSlug {
  dB1VPCU1GB("db-s-1vcpu-1gb"),
  dB1VPCU2GB("db-s-1vcpu-2gb"),
  dB2VPCU4GB("db-s-2vcpu-4gb"),
  dB4VPCU8GB("db-s-4vcpu-8gb"),
  dB6VPCU16GB("db-s-6vcpu-16gb"),
  dB8VPCU32GB("db-s-8vcpu-32gb"),
  dB16VPCU64GB("db-s-16vcpu-64gb");

  const DatabaseSlug(this.wireValue);
  final String wireValue;

  static DatabaseSlug fromValue(String value) {
    for (final item in DatabaseSlug.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseSlug value: $value');
  }
}
