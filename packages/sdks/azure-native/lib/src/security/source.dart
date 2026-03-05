/// The platform where the assessed resource resides
enum Source {
  valueAzure("Azure"),
  valueOnPremise("OnPremise"),
  valueOnPremiseSql("OnPremiseSql");

  const Source(this.wireValue);
  final String wireValue;

  static Source fromValue(String value) {
    for (final item in Source.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Source value: $value');
  }
}

