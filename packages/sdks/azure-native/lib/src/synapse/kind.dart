import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of the database
enum Kind implements pulumi.PulumiEnum<String> {
  valueReadWrite("ReadWrite"),
  valueReadOnlyFollowing("ReadOnlyFollowing");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
