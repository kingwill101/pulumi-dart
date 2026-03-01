/// The V3 type of the mapped entity
enum EntityMappingType {
  valueAccount("Account"),
  valueHost("Host"),
  valueIP("IP"),
  valueMalware("Malware"),
  valueFile("File"),
  valueProcess("Process"),
  valueCloudApplication("CloudApplication"),
  valueDNS("DNS"),
  valueAzureResource("AzureResource"),
  valueFileHash("FileHash"),
  valueRegistryKey("RegistryKey"),
  valueRegistryValue("RegistryValue"),
  valueSecurityGroup("SecurityGroup"),
  valueURL("URL"),
  valueMailbox("Mailbox"),
  valueMailCluster("MailCluster"),
  valueMailMessage("MailMessage"),
  valueSubmissionMail("SubmissionMail");

  const EntityMappingType(this.value);
  final String value;

  static EntityMappingType fromValue(String value) {
    for (final item in EntityMappingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityMappingType value: $value');
  }
}

