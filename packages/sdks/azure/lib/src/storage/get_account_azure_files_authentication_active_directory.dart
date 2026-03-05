// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountAzureFilesAuthenticationActiveDirectory {
  /// The domain GUID.
  final pulumi.Input<String> domainGuid;
  /// The primary domain that the AD DNS server is authoritative for.
  final pulumi.Input<String> domainName;
  /// The domain security identifier.
  final pulumi.Input<String> domainSid;
  /// The name of the Active Directory forest.
  final pulumi.Input<String> forestName;
  /// The NetBIOS domain name.
  final pulumi.Input<String> netbiosDomainName;
  /// The security identifier for Azure Storage.
  final pulumi.Input<String> storageSid;

  /// Creates a new [GetAccountAzureFilesAuthenticationActiveDirectory].
  /// [domainGuid] The domain GUID.
  /// [domainName] The primary domain that the AD DNS server is authoritative for.
  /// [domainSid] The domain security identifier.
  /// [forestName] The name of the Active Directory forest.
  /// [netbiosDomainName] The NetBIOS domain name.
  /// [storageSid] The security identifier for Azure Storage.
  GetAccountAzureFilesAuthenticationActiveDirectory({
    required this.domainGuid,
    required this.domainName,
    required this.domainSid,
    required this.forestName,
    required this.netbiosDomainName,
    required this.storageSid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainGuid': domainGuid,
      'domainName': domainName,
      'domainSid': domainSid,
      'forestName': forestName,
      'netbiosDomainName': netbiosDomainName,
      'storageSid': storageSid,
    };
  }

  factory GetAccountAzureFilesAuthenticationActiveDirectory.fromMap(Map<String, dynamic> map) {
    return GetAccountAzureFilesAuthenticationActiveDirectory(
      domainGuid: pulumi.Input.fromValue(map['domainGuid'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainSid: pulumi.Input.fromValue(map['domainSid'] as String),
      forestName: pulumi.Input.fromValue(map['forestName'] as String),
      netbiosDomainName: pulumi.Input.fromValue(map['netbiosDomainName'] as String),
      storageSid: pulumi.Input.fromValue(map['storageSid'] as String),
    );
  }
}

