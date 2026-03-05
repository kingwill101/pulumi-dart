/// Gets or sets the state of public network access.
enum MasterSitePropertiesPublicNetworkAccess {
  notSpecified("NotSpecified"),
  enabled("Enabled"),
  disabled("Disabled");

  const MasterSitePropertiesPublicNetworkAccess(this.wireValue);
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

