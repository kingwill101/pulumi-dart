// ignore_for_file: unused_element, unnecessary_cast

import 'multichannel.dart';

/// Setting for SMB protocol
class SmbSetting {
  /// SMB authentication methods supported by server. Valid values are NTLMv2, Kerberos. Should be passed as a string with delimiter ';'.
  final String? authenticationMethods;
  /// SMB channel encryption supported by server. Valid values are AES-128-CCM, AES-128-GCM, AES-256-GCM. Should be passed as a string with delimiter ';'.
  final String? channelEncryption;
  /// Kerberos ticket encryption supported by server. Valid values are RC4-HMAC, AES-256. Should be passed as a string with delimiter ';'
  final String? kerberosTicketEncryption;
  /// Multichannel setting. Applies to Premium FileStorage only.
  final Multichannel? multichannel;
  /// SMB protocol versions supported by server. Valid values are SMB2.1, SMB3.0, SMB3.1.1. Should be passed as a string with delimiter ';'.
  final String? versions;

  /// Creates a new [SmbSetting].
  /// [authenticationMethods] SMB authentication methods supported by server. Valid values are NTLMv2, Kerberos. Should be passed as a string with delimiter ';'.
  /// [channelEncryption] SMB channel encryption supported by server. Valid values are AES-128-CCM, AES-128-GCM, AES-256-GCM. Should be passed as a string with delimiter ';'.
  /// [kerberosTicketEncryption] Kerberos ticket encryption supported by server. Valid values are RC4-HMAC, AES-256. Should be passed as a string with delimiter ';'
  /// [multichannel] Multichannel setting. Applies to Premium FileStorage only.
  /// [versions] SMB protocol versions supported by server. Valid values are SMB2.1, SMB3.0, SMB3.1.1. Should be passed as a string with delimiter ';'.
  SmbSetting({
    this.authenticationMethods,
    this.channelEncryption,
    this.kerberosTicketEncryption,
    this.multichannel,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethods': ?authenticationMethods,
      'channelEncryption': ?channelEncryption,
      'kerberosTicketEncryption': ?kerberosTicketEncryption,
      'multichannel': ?multichannel == null ? null : multichannel!.toMap(),
      'versions': ?versions,
    };
  }

  factory SmbSetting.fromMap(Map<String, dynamic> map) {
    return SmbSetting(
      authenticationMethods: map['authenticationMethods'] == null ? null : map['authenticationMethods'] as String,
      channelEncryption: map['channelEncryption'] == null ? null : map['channelEncryption'] as String,
      kerberosTicketEncryption: map['kerberosTicketEncryption'] == null ? null : map['kerberosTicketEncryption'] as String,
      multichannel: map['multichannel'] == null ? null : Multichannel.fromMap((map['multichannel'] as Map).cast<String, dynamic>()),
      versions: map['versions'] == null ? null : map['versions'] as String,
    );
  }
}

