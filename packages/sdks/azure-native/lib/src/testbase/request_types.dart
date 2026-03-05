enum RequestTypes {
  valuePreReleaseAccess("PreReleaseAccess");

  const RequestTypes(this.wireValue);
  final String wireValue;

  static RequestTypes fromValue(String value) {
    for (final item in RequestTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestTypes value: $value');
  }
}

