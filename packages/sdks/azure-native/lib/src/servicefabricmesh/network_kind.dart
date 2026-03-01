/// The type of a Service Fabric container network.
enum NetworkKind {
  valueLocal("Local");

  const NetworkKind(this.value);
  final String value;

  static NetworkKind fromValue(String value) {
    for (final item in NetworkKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkKind value: $value');
  }
}

