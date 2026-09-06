import 'package:pulumi/pulumi.dart' as pulumi;

/// The repository type of the source control
enum RepoType implements pulumi.PulumiEnum<String> {
  github("Github"),
  azureDevOps("AzureDevOps");

  const RepoType(this.wireValue);
  @override
  final String wireValue;

  static RepoType fromValue(String value) {
    for (final item in RepoType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepoType value: $value');
  }
}
