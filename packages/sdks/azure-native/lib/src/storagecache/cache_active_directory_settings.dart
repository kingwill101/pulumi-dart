// ignore_for_file: unused_element, unnecessary_cast

import 'cache_active_directory_settings_credentials.dart';

/// Active Directory settings used to join a cache to a domain.
class CacheActiveDirectorySettings {
  /// The NetBIOS name to assign to the HPC Cache when it joins the Active Directory domain as a server. Length must 1-15 characters from the class [-0-9a-zA-Z].
  final String cacheNetBiosName;
  /// Active Directory admin credentials used to join the HPC Cache to a domain.
  final CacheActiveDirectorySettingsCredentials? credentials;
  /// The fully qualified domain name of the Active Directory domain controller.
  final String domainName;
  /// The Active Directory domain's NetBIOS name.
  final String domainNetBiosName;
  /// Primary DNS IP address used to resolve the Active Directory domain controller's fully qualified domain name.
  final String primaryDnsIpAddress;
  /// Secondary DNS IP address used to resolve the Active Directory domain controller's fully qualified domain name.
  final String? secondaryDnsIpAddress;

  /// Creates a new [CacheActiveDirectorySettings].
  /// [cacheNetBiosName] The NetBIOS name to assign to the HPC Cache when it joins the Active Directory domain as a server. Length must 1-15 characters from the class [-0-9a-zA-Z].
  /// [credentials] Active Directory admin credentials used to join the HPC Cache to a domain.
  /// [domainName] The fully qualified domain name of the Active Directory domain controller.
  /// [domainNetBiosName] The Active Directory domain's NetBIOS name.
  /// [primaryDnsIpAddress] Primary DNS IP address used to resolve the Active Directory domain controller's fully qualified domain name.
  /// [secondaryDnsIpAddress] Secondary DNS IP address used to resolve the Active Directory domain controller's fully qualified domain name.
  CacheActiveDirectorySettings({
    required this.cacheNetBiosName,
    this.credentials,
    required this.domainName,
    required this.domainNetBiosName,
    required this.primaryDnsIpAddress,
    this.secondaryDnsIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNetBiosName': cacheNetBiosName,
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'domainName': domainName,
      'domainNetBiosName': domainNetBiosName,
      'primaryDnsIpAddress': primaryDnsIpAddress,
      'secondaryDnsIpAddress': ?secondaryDnsIpAddress,
    };
  }

  factory CacheActiveDirectorySettings.fromMap(Map<String, dynamic> map) {
    return CacheActiveDirectorySettings(
      cacheNetBiosName: map['cacheNetBiosName'] as String,
      credentials: map['credentials'] == null ? null : CacheActiveDirectorySettingsCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      domainName: map['domainName'] as String,
      domainNetBiosName: map['domainNetBiosName'] as String,
      primaryDnsIpAddress: map['primaryDnsIpAddress'] as String,
      secondaryDnsIpAddress: map['secondaryDnsIpAddress'] == null ? null : map['secondaryDnsIpAddress'] as String,
    );
  }
}

