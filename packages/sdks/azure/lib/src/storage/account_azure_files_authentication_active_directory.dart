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
  const AccountAzureFilesAuthenticationActiveDirectory({
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
      domainGuid: pulumi.Input.fromValue(map['domainGuid'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainSid: (() { final guardedValue = map['domainSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forestName: (() { final guardedValue = map['forestName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netbiosDomainName: (() { final guardedValue = map['netbiosDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSid: (() { final guardedValue = map['storageSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

