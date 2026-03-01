// ignore_for_file: unused_element, unnecessary_cast


class GetAccountAzureFilesAuthenticationActiveDirectory {
  /// The domain GUID.
  final String domainGuid;
  /// The primary domain that the AD DNS server is authoritative for.
  final String domainName;
  /// The domain security identifier.
  final String domainSid;
  /// The name of the Active Directory forest.
  final String forestName;
  /// The NetBIOS domain name.
  final String netbiosDomainName;
  /// The security identifier for Azure Storage.
  final String storageSid;

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
      domainGuid: map['domainGuid'] as String,
      domainName: map['domainName'] as String,
      domainSid: map['domainSid'] as String,
      forestName: map['forestName'] as String,
      netbiosDomainName: map['netbiosDomainName'] as String,
      storageSid: map['storageSid'] as String,
    );
  }
}

