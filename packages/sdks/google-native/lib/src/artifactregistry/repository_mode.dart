import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The mode of the repository.
enum RepositoryMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  standardRepository("STANDARD_REPOSITORY"),
  virtualRepository("VIRTUAL_REPOSITORY"),
  remoteRepository("REMOTE_REPOSITORY");

  const RepositoryMode(this.wireValue);
  @override
  final String wireValue;

  static RepositoryMode fromValue(String value) {
    for (final item in RepositoryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepositoryMode value: $value');
  }
}
