/// Replica commit mode in availability group.
enum Commit {
  synchronousCommit("Synchronous_Commit"),
  asynchronousCommit("Asynchronous_Commit");

  const Commit(this.wireValue);
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

