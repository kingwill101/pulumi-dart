import 'package:pulumi/pulumi.dart' as pulumi;

/// Source type of the content
enum SourceKind implements pulumi.PulumiEnum<String> {
  valueLocalWorkspace("LocalWorkspace"),
  valueCommunity("Community"),
  valueSolution("Solution"),
  valueSourceRepository("SourceRepository");

  const SourceKind(this.wireValue);
  @override
  final String wireValue;

  static SourceKind fromValue(String value) {
    for (final item in SourceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceKind value: $value');
  }
}
