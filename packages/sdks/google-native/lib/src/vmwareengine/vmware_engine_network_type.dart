/// Required. VMware Engine network type.
enum VmwareEngineNetworkType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  legacy("LEGACY"),
  standard("STANDARD");

  const VmwareEngineNetworkType(this.wireValue);
  final String wireValue;

  static VmwareEngineNetworkType fromValue(String value) {
    for (final item in VmwareEngineNetworkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmwareEngineNetworkType value: $value');
  }
}

