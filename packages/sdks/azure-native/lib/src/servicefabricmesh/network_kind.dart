/// The type of a Service Fabric container network.
enum NetworkKind {
  valueLocal("Local");

  const NetworkKind(this.wireValue);
  final String wireValue;

  static NetworkKind fromValue(String value) {
    for (final item in NetworkKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkKind value: $value');
  }
}
