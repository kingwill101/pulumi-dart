import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the query's source entity
enum EntityType implements pulumi.PulumiEnum<String> {
  valueAccount("Account"),
  valueHost("Host"),
  valueFile("File"),
  valueAzureResource("AzureResource"),
  valueCloudApplication("CloudApplication"),
  valueDNS("DNS"),
  valueFileHash("FileHash"),
  valueIP("IP"),
  valueMalware("Malware"),
  valueProcess("Process"),
  valueRegistryKey("RegistryKey"),
  valueRegistryValue("RegistryValue"),
  valueSecurityGroup("SecurityGroup"),
  valueURL("URL"),
  valueIoTDevice("IoTDevice"),
  valueSecurityAlert("SecurityAlert"),
  valueHuntingBookmark("HuntingBookmark"),
  valueMailCluster("MailCluster"),
  valueMailMessage("MailMessage"),
  valueMailbox("Mailbox"),
  valueSubmissionMail("SubmissionMail"),
  valueNic("Nic");

  const EntityType(this.wireValue);
  @override
  final String wireValue;

  static EntityType fromValue(String value) {
    for (final item in EntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityType value: $value');
  }
}
