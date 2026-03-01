/// Required. Private connection type.
enum PrivateConnectionType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS"),
  netappCloudVolumes("NETAPP_CLOUD_VOLUMES"),
  dellPowerscale("DELL_POWERSCALE"),
  thirdPartyService("THIRD_PARTY_SERVICE");

  const PrivateConnectionType(this.value);
  final String value;

  static PrivateConnectionType fromValue(String value) {
    for (final item in PrivateConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateConnectionType value: $value');
  }
}

