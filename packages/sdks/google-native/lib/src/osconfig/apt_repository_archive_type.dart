/// Type of archive files in this repository. The default behavior is DEB.
enum AptRepositoryArchiveType {
  archiveTypeUnspecified("ARCHIVE_TYPE_UNSPECIFIED"),
  deb("DEB"),
  debSrc("DEB_SRC");

  const AptRepositoryArchiveType(this.wireValue);
  final String wireValue;

  static AptRepositoryArchiveType fromValue(String value) {
    for (final item in AptRepositoryArchiveType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AptRepositoryArchiveType value: $value');
  }
}
