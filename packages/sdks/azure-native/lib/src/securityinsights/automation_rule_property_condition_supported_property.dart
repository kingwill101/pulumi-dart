/// The property to evaluate in an automation rule property condition.
enum AutomationRulePropertyConditionSupportedProperty {
  valueIncidentTitle("IncidentTitle"),
  valueIncidentDescription("IncidentDescription"),
  valueIncidentSeverity("IncidentSeverity"),
  valueIncidentStatus("IncidentStatus"),
  valueIncidentRelatedAnalyticRuleIds("IncidentRelatedAnalyticRuleIds"),
  valueIncidentTactics("IncidentTactics"),
  valueIncidentLabel("IncidentLabel"),
  valueIncidentProviderName("IncidentProviderName"),
  valueIncidentUpdatedBySource("IncidentUpdatedBySource"),
  valueIncidentCustomDetailsKey("IncidentCustomDetailsKey"),
  valueIncidentCustomDetailsValue("IncidentCustomDetailsValue"),
  valueAccountAadTenantId("AccountAadTenantId"),
  valueAccountAadUserId("AccountAadUserId"),
  valueAccountName("AccountName"),
  valueAccountNTDomain("AccountNTDomain"),
  valueAccountPUID("AccountPUID"),
  valueAccountSid("AccountSid"),
  valueAccountObjectGuid("AccountObjectGuid"),
  valueAccountUPNSuffix("AccountUPNSuffix"),
  valueAlertProductNames("AlertProductNames"),
  valueAlertAnalyticRuleIds("AlertAnalyticRuleIds"),
  valueAzureResourceResourceId("AzureResourceResourceId"),
  valueAzureResourceSubscriptionId("AzureResourceSubscriptionId"),
  valueCloudApplicationAppId("CloudApplicationAppId"),
  valueCloudApplicationAppName("CloudApplicationAppName"),
  valueDNSDomainName("DNSDomainName"),
  valueFileDirectory("FileDirectory"),
  valueFileName("FileName"),
  valueFileHashValue("FileHashValue"),
  valueHostAzureID("HostAzureID"),
  valueHostName("HostName"),
  valueHostNetBiosName("HostNetBiosName"),
  valueHostNTDomain("HostNTDomain"),
  valueHostOSVersion("HostOSVersion"),
  valueIoTDeviceId("IoTDeviceId"),
  valueIoTDeviceName("IoTDeviceName"),
  valueIoTDeviceType("IoTDeviceType"),
  valueIoTDeviceVendor("IoTDeviceVendor"),
  valueIoTDeviceModel("IoTDeviceModel"),
  valueIoTDeviceOperatingSystem("IoTDeviceOperatingSystem"),
  valueIPAddress("IPAddress"),
  valueMailboxDisplayName("MailboxDisplayName"),
  valueMailboxPrimaryAddress("MailboxPrimaryAddress"),
  valueMailboxUPN("MailboxUPN"),
  valueMailMessageDeliveryAction("MailMessageDeliveryAction"),
  valueMailMessageDeliveryLocation("MailMessageDeliveryLocation"),
  valueMailMessageRecipient("MailMessageRecipient"),
  valueMailMessageSenderIP("MailMessageSenderIP"),
  valueMailMessageSubject("MailMessageSubject"),
  valueMailMessageP1Sender("MailMessageP1Sender"),
  valueMailMessageP2Sender("MailMessageP2Sender"),
  valueMalwareCategory("MalwareCategory"),
  valueMalwareName("MalwareName"),
  valueProcessCommandLine("ProcessCommandLine"),
  valueProcessId("ProcessId"),
  valueRegistryKey("RegistryKey"),
  valueRegistryValueData("RegistryValueData"),
  valueUrl("Url");

  const AutomationRulePropertyConditionSupportedProperty(this.wireValue);
  final String wireValue;

  static AutomationRulePropertyConditionSupportedProperty fromValue(String value) {
    for (final item in AutomationRulePropertyConditionSupportedProperty.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyConditionSupportedProperty value: $value');
  }
}
