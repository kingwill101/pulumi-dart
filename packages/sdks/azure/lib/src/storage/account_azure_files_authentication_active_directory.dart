// ignore_for_file: unused_element, unnecessary_cast


class AccountAzureFilesAuthenticationActiveDirectory {
  /// Specifies the domain GUID.
  final String domainGuid;
  /// Specifies the primary domain that the AD DNS server is authoritative for.
  final String domainName;
  /// Specifies the security identifier (SID). This is required when `directory_type` is set to `AD`.
  final String? domainSid;
  /// Specifies the Active Directory forest. This is required when `directory_type` is set to `AD`.
  final String? forestName;
  /// Specifies the NetBIOS domain name. This is required when `directory_type` is set to `AD`.
  final String? netbiosDomainName;
  /// Specifies the security identifier (SID) for Azure Storage. This is required when `directory_type` is set to `AD`.
  final String? storageSid;

  /// Creates a new [AccountAzureFilesAuthenticationActiveDirectory].
  /// [domainGuid] Specifies the domain GUID.
  /// [domainName] Specifies the primary domain that the AD DNS server is authoritative for.
  /// [domainSid] Specifies the security identifier (SID). This is required when `directory_type` is set to `AD`.
  /// [forestName] Specifies the Active Directory forest. This is required when `directory_type` is set to `AD`.
  /// [netbiosDomainName] Specifies the NetBIOS domain name. This is required when `directory_type` is set to `AD`.
  /// [storageSid] Specifies the security identifier (SID) for Azure Storage. This is required when `directory_type` is set to `AD`.
  AccountAzureFilesAuthenticationActiveDirectory({
    required this.domainGuid,
    required this.domainName,
    this.domainSid,
    this.forestName,
    this.netbiosDomainName,
    this.storageSid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainGuid': domainGuid,
      'domainName': domainName,
      'domainSid': ?domainSid,
      'forestName': ?forestName,
      'netbiosDomainName': ?netbiosDomainName,
      'storageSid': ?storageSid,
    };
  }

  factory AccountAzureFilesAuthenticationActiveDirectory.fromMap(Map<String, dynamic> map) {
    return AccountAzureFilesAuthenticationActiveDirectory(
      domainGuid: map['domainGuid'] as String,
      domainName: map['domainName'] as String,
      domainSid: map['domainSid'] == null ? null : map['domainSid'] as String,
      forestName: map['forestName'] == null ? null : map['forestName'] as String,
      netbiosDomainName: map['netbiosDomainName'] == null ? null : map['netbiosDomainName'] as String,
      storageSid: map['storageSid'] == null ? null : map['storageSid'] as String,
    );
  }
}

