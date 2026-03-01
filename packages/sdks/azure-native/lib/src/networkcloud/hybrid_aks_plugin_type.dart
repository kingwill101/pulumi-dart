/// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
enum HybridAksPluginType {
  valueDPDK("DPDK"),
  valueSRIOV("SRIOV"),
  valueOSDevice("OSDevice");

  const HybridAksPluginType(this.value);
  final String value;

  static HybridAksPluginType fromValue(String value) {
    for (final item in HybridAksPluginType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HybridAksPluginType value: $value');
  }
}

