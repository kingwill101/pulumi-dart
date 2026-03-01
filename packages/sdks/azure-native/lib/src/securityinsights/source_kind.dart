/// Source type of the content
enum SourceKind {
  valueLocalWorkspace("LocalWorkspace"),
  valueCommunity("Community"),
  valueSolution("Solution"),
  valueSourceRepository("SourceRepository");

  const SourceKind(this.value);
  final String value;

  static SourceKind fromValue(String value) {
    for (final item in SourceKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceKind value: $value');
  }
}

