import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Type of archive files in this repository.
enum OSPolicyResourceRepositoryResourceAptRepositoryArchiveType implements pulumi.PulumiEnum<String> {
  archiveTypeUnspecified("ARCHIVE_TYPE_UNSPECIFIED"),
  deb("DEB"),
  debSrc("DEB_SRC");

  const OSPolicyResourceRepositoryResourceAptRepositoryArchiveType(this.wireValue);
  @override
  final String wireValue;

  static OSPolicyResourceRepositoryResourceAptRepositoryArchiveType fromValue(String value) {
    for (final item in OSPolicyResourceRepositoryResourceAptRepositoryArchiveType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyResourceRepositoryResourceAptRepositoryArchiveType value: $value');
  }
}
