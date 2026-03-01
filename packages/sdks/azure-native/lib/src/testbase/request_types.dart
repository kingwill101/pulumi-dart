enum RequestTypes {
  valuePreReleaseAccess("PreReleaseAccess");

  const RequestTypes(this.value);
  final String value;

  static RequestTypes fromValue(String value) {
    for (final item in RequestTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestTypes value: $value');
  }
}

