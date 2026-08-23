/// SQL Server edition type.
enum SqlImageSku {
  developer("Developer"),
  express("Express"),
  standard("Standard"),
  enterprise("Enterprise"),
  web("Web");

  const SqlImageSku(this.wireValue);
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
