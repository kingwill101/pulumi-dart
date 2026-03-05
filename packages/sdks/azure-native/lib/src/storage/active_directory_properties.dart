// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings properties for Active Directory (AD).
class ActiveDirectoryProperties {
  /// Specifies the Active Directory account type for Azure Storage.
  final pulumi.Input<String>? accountType;
  /// Specifies the security identifier (SID) for Azure Storage.
  final pulumi.Input<String>? azureStorageSid;
  /// Specifies the domain GUID.
  final pulumi.Input<String> domainGuid;
  /// Specifies the primary domain that the AD DNS server is authoritative for.
  final pulumi.Input<String> domainName;
  /// Specifies the security identifier (SID).
  final pulumi.Input<String>? domainSid;
  /// Specifies the Active Directory forest to get.
  final pulumi.Input<String>? forestName;
  /// Specifies the NetBIOS domain name.
  final pulumi.Input<String>? netBiosDomainName;
  /// Specifies the Active Directory SAMAccountName for Azure Storage.
  final pulumi.Input<String>? samAccountName;

  /// Creates a new [ActiveDirectoryProperties].
  /// [accountType] Specifies the Active Directory account type for Azure Storage.
  /// [azureStorageSid] Specifies the security identifier (SID) for Azure Storage.
  /// [domainGuid] Specifies the domain GUID.
  /// [domainName] Specifies the primary domain that the AD DNS server is authoritative for.
  /// [domainSid] Specifies the security identifier (SID).
  /// [forestName] Specifies the Active Directory forest to get.
  /// [netBiosDomainName] Specifies the NetBIOS domain name.
  /// [samAccountName] Specifies the Active Directory SAMAccountName for Azure Storage.
  ActiveDirectoryProperties({
    this.accountType,
    this.azureStorageSid,
    required this.domainGuid,
    required this.domainName,
    this.domainSid,
    this.forestName,
    this.netBiosDomainName,
    this.samAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountType': ?accountType,
      'azureStorageSid': ?azureStorageSid,
      'domainGuid': domainGuid,
      'domainName': domainName,
      'domainSid': ?domainSid,
      'forestName': ?forestName,
      'netBiosDomainName': ?netBiosDomainName,
      'samAccountName': ?samAccountName,
    };
  }

  factory ActiveDirectoryProperties.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryProperties(
      accountType: (() { final guardedValue = map['accountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureStorageSid: (() { final guardedValue = map['azureStorageSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainGuid: pulumi.Input.fromValue(map['domainGuid'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainSid: (() { final guardedValue = map['domainSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forestName: (() { final guardedValue = map['forestName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netBiosDomainName: (() { final guardedValue = map['netBiosDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samAccountName: (() { final guardedValue = map['samAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

