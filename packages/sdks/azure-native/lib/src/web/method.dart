/// The method that should be used to authenticate the user.
enum Method {
  valueClientSecretPost("ClientSecretPost");

  const Method(this.wireValue);
  final String wireValue;

  static Method fromValue(String value) {
    for (final item in Method.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Method value: $value');
  }
}
