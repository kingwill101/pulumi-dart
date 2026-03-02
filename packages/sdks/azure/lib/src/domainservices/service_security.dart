// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSecurity {
  /// Whether to enable Kerberos Armoring. Defaults to `false`.
  final pulumi.Input<bool>? kerberosArmoringEnabled;
  /// Whether to enable Kerberos RC4 Encryption. Defaults to `false`.
  final pulumi.Input<bool>? kerberosRc4EncryptionEnabled;
  /// Whether to enable legacy NTLM v1 support. Defaults to `false`.
  final pulumi.Input<bool>? ntlmV1Enabled;
  /// Whether to synchronize Kerberos password hashes to the managed domain. Defaults to `false`.
  final pulumi.Input<bool>? syncKerberosPasswords;
  /// Whether to synchronize NTLM password hashes to the managed domain. Defaults to `false`.
  final pulumi.Input<bool>? syncNtlmPasswords;
  /// Whether to synchronize on-premises password hashes to the managed domain. Defaults to `false`.
  final pulumi.Input<bool>? syncOnPremPasswords;
  /// Whether to enable legacy TLS v1 support. Defaults to `false`.
  final pulumi.Input<bool>? tlsV1Enabled;

  /// Creates a new [ServiceSecurity].
  /// [kerberosArmoringEnabled] Whether to enable Kerberos Armoring. Defaults to `false`.
  /// [kerberosRc4EncryptionEnabled] Whether to enable Kerberos RC4 Encryption. Defaults to `false`.
  /// [ntlmV1Enabled] Whether to enable legacy NTLM v1 support. Defaults to `false`.
  /// [syncKerberosPasswords] Whether to synchronize Kerberos password hashes to the managed domain. Defaults to `false`.
  /// [syncNtlmPasswords] Whether to synchronize NTLM password hashes to the managed domain. Defaults to `false`.
  /// [syncOnPremPasswords] Whether to synchronize on-premises password hashes to the managed domain. Defaults to `false`.
  /// [tlsV1Enabled] Whether to enable legacy TLS v1 support. Defaults to `false`.
  ServiceSecurity({
    this.kerberosArmoringEnabled,
    this.kerberosRc4EncryptionEnabled,
    this.ntlmV1Enabled,
    this.syncKerberosPasswords,
    this.syncNtlmPasswords,
    this.syncOnPremPasswords,
    this.tlsV1Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kerberosArmoringEnabled': ?kerberosArmoringEnabled,
      'kerberosRc4EncryptionEnabled': ?kerberosRc4EncryptionEnabled,
      'ntlmV1Enabled': ?ntlmV1Enabled,
      'syncKerberosPasswords': ?syncKerberosPasswords,
      'syncNtlmPasswords': ?syncNtlmPasswords,
      'syncOnPremPasswords': ?syncOnPremPasswords,
      'tlsV1Enabled': ?tlsV1Enabled,
    };
  }

  factory ServiceSecurity.fromMap(Map<String, dynamic> map) {
    return ServiceSecurity(
      kerberosArmoringEnabled: map['kerberosArmoringEnabled'] == null ? null : (map['kerberosArmoringEnabled']! as bool).input(),
      kerberosRc4EncryptionEnabled: map['kerberosRc4EncryptionEnabled'] == null ? null : (map['kerberosRc4EncryptionEnabled']! as bool).input(),
      ntlmV1Enabled: map['ntlmV1Enabled'] == null ? null : (map['ntlmV1Enabled']! as bool).input(),
      syncKerberosPasswords: map['syncKerberosPasswords'] == null ? null : (map['syncKerberosPasswords']! as bool).input(),
      syncNtlmPasswords: map['syncNtlmPasswords'] == null ? null : (map['syncNtlmPasswords']! as bool).input(),
      syncOnPremPasswords: map['syncOnPremPasswords'] == null ? null : (map['syncOnPremPasswords']! as bool).input(),
      tlsV1Enabled: map['tlsV1Enabled'] == null ? null : (map['tlsV1Enabled']! as bool).input(),
    );
  }
}

