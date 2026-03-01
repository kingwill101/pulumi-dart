/// Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
enum ReleaseType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  deploy("DEPLOY"),
  rollback("ROLLBACK"),
  siteDisable("SITE_DISABLE");

  const ReleaseType(this.value);
  final String value;

  static ReleaseType fromValue(String value) {
    for (final item in ReleaseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReleaseType value: $value');
  }
}

