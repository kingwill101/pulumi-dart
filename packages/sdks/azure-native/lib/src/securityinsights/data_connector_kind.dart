/// The data connector kind
enum DataConnectorKind {
  valueAzureActiveDirectory("AzureActiveDirectory"),
  valueAzureSecurityCenter("AzureSecurityCenter"),
  valueMicrosoftCloudAppSecurity("MicrosoftCloudAppSecurity"),
  valueThreatIntelligence("ThreatIntelligence"),
  valueMicrosoftThreatIntelligence("MicrosoftThreatIntelligence"),
  valuePremiumMicrosoftDefenderForThreatIntelligence("PremiumMicrosoftDefenderForThreatIntelligence"),
  valueOffice365("Office365"),
  valueAmazonWebServicesCloudTrail("AmazonWebServicesCloudTrail"),
  valueAzureAdvancedThreatProtection("AzureAdvancedThreatProtection"),
  valueMicrosoftDefenderAdvancedThreatProtection("MicrosoftDefenderAdvancedThreatProtection"),
  valueRestApiPoller("RestApiPoller");

  const DataConnectorKind(this.value);
  final String value;

  static DataConnectorKind fromValue(String value) {
    for (final item in DataConnectorKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataConnectorKind value: $value');
  }
}

