import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of archive files in this repository. The default behavior is DEB.
enum AptRepositoryArchiveType implements pulumi.PulumiEnum<String> {
  archiveTypeUnspecified("ARCHIVE_TYPE_UNSPECIFIED"),
  deb("DEB"),
  debSrc("DEB_SRC");

  const AptRepositoryArchiveType(this.wireValue);
  @override
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
