import 'package:pulumi/pulumi.dart' as pulumi;

/// One of the publicly available Python repositories supported by Artifact Registry.
enum PythonRepositoryPublicRepository implements pulumi.PulumiEnum<String> {
  publicRepositoryUnspecified("PUBLIC_REPOSITORY_UNSPECIFIED"),
  pypi("PYPI");

  const PythonRepositoryPublicRepository(this.wireValue);
  @override
  final String wireValue;

  static PythonRepositoryPublicRepository fromValue(String value) {
    for (final item in PythonRepositoryPublicRepository.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PythonRepositoryPublicRepository value: $value');
  }
}
