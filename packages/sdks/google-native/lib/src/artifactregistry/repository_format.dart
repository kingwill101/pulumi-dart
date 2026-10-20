import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The format of packages that are stored in the repository.
enum RepositoryFormat implements pulumi.PulumiEnum<String> {
  formatUnspecified("FORMAT_UNSPECIFIED"),
  docker("DOCKER"),
  maven("MAVEN"),
  npm("NPM"),
  apt("APT"),
  yum("YUM"),
  googet("GOOGET"),
  python("PYTHON"),
  kfp("KFP"),
  go("GO");

  const RepositoryFormat(this.wireValue);
  @override
  final String wireValue;

  static RepositoryFormat fromValue(String value) {
    for (final item in RepositoryFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepositoryFormat value: $value');
  }
}
