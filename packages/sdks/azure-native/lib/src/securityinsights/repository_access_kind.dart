import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of repository access credentials
enum RepositoryAccessKind implements pulumi.PulumiEnum<String> {
  oAuth("OAuth"),
  pAT("PAT"),
  app("App");

  const RepositoryAccessKind(this.wireValue);
  @override
  final String wireValue;

  static RepositoryAccessKind fromValue(String value) {
    for (final item in RepositoryAccessKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepositoryAccessKind value: $value');
  }
}
