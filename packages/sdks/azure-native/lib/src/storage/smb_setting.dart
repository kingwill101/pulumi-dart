// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multichannel.dart';

/// Setting for SMB protocol
class SmbSetting {
  /// SMB authentication methods supported by server. Valid values are NTLMv2, Kerberos. Should be passed as a string with delimiter ';'.
  final pulumi.Input<String>? authenticationMethods;

  /// SMB channel encryption supported by server. Valid values are AES-128-CCM, AES-128-GCM, AES-256-GCM. Should be passed as a string with delimiter ';'.
  final pulumi.Input<String>? channelEncryption;

  /// Kerberos ticket encryption supported by server. Valid values are RC4-HMAC, AES-256. Should be passed as a string with delimiter ';'
  final pulumi.Input<String>? kerberosTicketEncryption;

  /// Multichannel setting. Applies to Premium FileStorage only.
  final pulumi.Input<Multichannel>? multichannel;

  /// SMB protocol versions supported by server. Valid values are SMB2.1, SMB3.0, SMB3.1.1. Should be passed as a string with delimiter ';'.
  final pulumi.Input<String>? versions;

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
      'multichannel':
          ?pulumi.Input.mapOptionalInputValue<
            Multichannel,
            Map<String, dynamic>
          >(multichannel, (value) => value.toMap()),
      'versions': ?versions,
    };
  }

  factory SmbSetting.fromMap(Map<String, dynamic> map) {
    return SmbSetting(
      authenticationMethods: (() {
        final guardedValue = map['authenticationMethods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      channelEncryption: (() {
        final guardedValue = map['channelEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kerberosTicketEncryption: (() {
        final guardedValue = map['kerberosTicketEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multichannel: (() {
        final guardedValue = map['multichannel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Multichannel.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      versions: (() {
        final guardedValue = map['versions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
