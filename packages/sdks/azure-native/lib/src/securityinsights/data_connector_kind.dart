import 'package:pulumi/pulumi.dart' as pulumi;

/// The data connector kind
enum DataConnectorKind implements pulumi.PulumiEnum<String> {
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

  const DataConnectorKind(this.wireValue);
  @override
  final String wireValue;

  static DataConnectorKind fromValue(String value) {
    for (final item in DataConnectorKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataConnectorKind value: $value');
  }
}
