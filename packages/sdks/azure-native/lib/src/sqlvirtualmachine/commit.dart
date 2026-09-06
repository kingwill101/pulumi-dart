import 'package:pulumi/pulumi.dart' as pulumi;

/// Replica commit mode in availability group.
enum Commit implements pulumi.PulumiEnum<String> {
  synchronousCommit("Synchronous_Commit"),
  asynchronousCommit("Asynchronous_Commit");

  const Commit(this.wireValue);
  @override
  final String wireValue;

  static Commit fromValue(String value) {
    for (final item in Commit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Commit value: $value');
  }
}
