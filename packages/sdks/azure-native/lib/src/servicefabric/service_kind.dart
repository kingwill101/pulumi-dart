/// The kind of service (Stateless or Stateful).
enum ServiceKind {
  valueStateless("Stateless"),
  valueStateful("Stateful");

  const ServiceKind(this.wireValue);
  final String wireValue;

  static ServiceKind fromValue(String value) {
    for (final item in ServiceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceKind value: $value');
  }
}
