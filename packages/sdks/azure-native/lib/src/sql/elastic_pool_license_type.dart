/// The license type to apply for this elastic pool.
enum ElasticPoolLicenseType {
  valueLicenseIncluded("LicenseIncluded"),
  valueBasePrice("BasePrice");

  const ElasticPoolLicenseType(this.wireValue);
  final String wireValue;

  static ElasticPoolLicenseType fromValue(String value) {
    for (final item in ElasticPoolLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticPoolLicenseType value: $value');
  }
}

