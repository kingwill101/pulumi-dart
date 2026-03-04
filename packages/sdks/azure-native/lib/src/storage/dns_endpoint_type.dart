/// Allows you to specify the type of endpoint. Set this to AzureDNSZone to create a large number of accounts in a single subscription, which creates accounts in an Azure DNS Zone and the endpoint URL will have an alphanumeric DNS Zone identifier.
enum DnsEndpointType {
  valueStandard("Standard"),
  valueAzureDnsZone("AzureDnsZone");

  const DnsEndpointType(this.wireValue);
  final String wireValue;

  static DnsEndpointType fromValue(String value) {
    for (final item in DnsEndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsEndpointType value: $value');
  }
}
