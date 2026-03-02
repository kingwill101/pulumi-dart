// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountAzureFilesAuthenticationActiveDirectory {
  /// Specifies the domain GUID.
  final pulumi.Input<String> domainGuid;
  /// Specifies the primary domain that the AD DNS server is authoritative for.
  final pulumi.Input<String> domainName;
  /// Specifies the security identifier (SID). This is required when `directory_type` is set to `AD`.
  final pulumi.Input<String>? domainSid;
  /// Specifies the Active Directory forest. This is required when `directory_type` is set to `AD`.
  final pulumi.Input<String>? forestName;
  /// Specifies the NetBIOS domain name. This is required when `directory_type` is set to `AD`.
  final pulumi.Input<String>? netbiosDomainName;
  /// Specifies the security identifier (SID) for Azure Storage. This is required when `directory_type` is set to `AD`.
  final pulumi.Input<String>? storageSid;

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
      domainGuid: (map['domainGuid'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      domainSid: map['domainSid'] == null ? null : (map['domainSid'] as String).input(),
      forestName: map['forestName'] == null ? null : (map['forestName'] as String).input(),
      netbiosDomainName: map['netbiosDomainName'] == null ? null : (map['netbiosDomainName'] as String).input(),
      storageSid: map['storageSid'] == null ? null : (map['storageSid'] as String).input(),
    );
  }
}

