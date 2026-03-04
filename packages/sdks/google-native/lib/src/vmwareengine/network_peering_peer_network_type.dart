/// Required. The type of the network to peer with the VMware Engine network.
enum NetworkPeeringPeerNetworkType {
  peerNetworkTypeUnspecified("PEER_NETWORK_TYPE_UNSPECIFIED"),
  standard("STANDARD"),
  vmwareEngineNetwork("VMWARE_ENGINE_NETWORK"),
  privateServicesAccess("PRIVATE_SERVICES_ACCESS"),
  netappCloudVolumes("NETAPP_CLOUD_VOLUMES"),
  thirdPartyService("THIRD_PARTY_SERVICE"),
  dellPowerscale("DELL_POWERSCALE");

  const NetworkPeeringPeerNetworkType(this.wireValue);
  final String wireValue;

  static NetworkPeeringPeerNetworkType fromValue(String value) {
    for (final item in NetworkPeeringPeerNetworkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPeeringPeerNetworkType value: $value');
  }
}
