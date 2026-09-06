import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the state of public network access.
enum MasterSitePropertiesPublicNetworkAccess implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  enabled("Enabled"),
  disabled("Disabled");

  const MasterSitePropertiesPublicNetworkAccess(this.wireValue);
  @override
  final String wireValue;

  static MasterSitePropertiesPublicNetworkAccess fromValue(String value) {
    for (final item in MasterSitePropertiesPublicNetworkAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MasterSitePropertiesPublicNetworkAccess value: $value');
  }
}
