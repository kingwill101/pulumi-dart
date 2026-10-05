import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Private connection type.
enum PrivateConnectionType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS"),
  netappCloudVolumes("NETAPP_CLOUD_VOLUMES"),
  dellPowerscale("DELL_POWERSCALE"),
  thirdPartyService("THIRD_PARTY_SERVICE");

  const PrivateConnectionType(this.wireValue);
  @override
  final String wireValue;

  static PrivateConnectionType fromValue(String value) {
    for (final item in PrivateConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateConnectionType value: $value');
  }
}
