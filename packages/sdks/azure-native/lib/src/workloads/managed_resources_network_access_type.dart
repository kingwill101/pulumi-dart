/// Specifies the network access configuration for the resources that will be deployed in the Managed Resource Group. The options to choose from are Public and Private. If 'Private' is chosen, the Storage Account service tag should be enabled on the subnets in which the SAP VMs exist. This is required for establishing connectivity between VM extensions and the managed resource group storage account. This setting is currently applicable only to Storage Account. Learn more here https://go.microsoft.com/fwlink/?linkid=2247228
enum ManagedResourcesNetworkAccessType {
  public("Public"),
  private("Private");

  const ManagedResourcesNetworkAccessType(this.wireValue);
  final String wireValue;

  static ManagedResourcesNetworkAccessType fromValue(String value) {
    for (final item in ManagedResourcesNetworkAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedResourcesNetworkAccessType value: $value');
  }
}
