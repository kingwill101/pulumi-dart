/// The indicator of how this network will be utilized by the Kubernetes cluster.
enum KubernetesPluginType {
  valueDPDK("DPDK"),
  valueSRIOV("SRIOV"),
  valueOSDevice("OSDevice"),
  valueMACVLAN("MACVLAN"),
  valueIPVLAN("IPVLAN");

  const KubernetesPluginType(this.wireValue);
  final String wireValue;

  static KubernetesPluginType fromValue(String value) {
    for (final item in KubernetesPluginType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KubernetesPluginType value: $value');
  }
}

