import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server edition type.
enum SqlImageSku implements pulumi.PulumiEnum<String> {
  developer("Developer"),
  express("Express"),
  standard("Standard"),
  enterprise("Enterprise"),
  web("Web");

  const SqlImageSku(this.wireValue);
  @override
  final String wireValue;

  static SqlImageSku fromValue(String value) {
    for (final item in SqlImageSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlImageSku value: $value');
  }
}
