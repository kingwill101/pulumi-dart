/// The IP mode for instances. Only applicable in the App Engine flexible environment.
enum NetworkInstanceIpMode {
  instanceIpModeUnspecified("INSTANCE_IP_MODE_UNSPECIFIED"),
  external("EXTERNAL"),
  internal("INTERNAL");

  const NetworkInstanceIpMode(this.wireValue);
  final String wireValue;

  static NetworkInstanceIpMode fromValue(String value) {
    for (final item in NetworkInstanceIpMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInstanceIpMode value: $value');
  }
}
