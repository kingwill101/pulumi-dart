import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of file share config, eg: Mount/CreateAndMount/Skip.
enum FileShareConfigurationType implements pulumi.PulumiEnum<String> {
  skip("Skip"),
  createAndMount("CreateAndMount"),
  mount("Mount");

  const FileShareConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static FileShareConfigurationType fromValue(String value) {
    for (final item in FileShareConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileShareConfigurationType value: $value');
  }
}
