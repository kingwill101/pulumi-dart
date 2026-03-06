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
  const ServiceSecurity({
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
      kerberosArmoringEnabled: (() { final guardedValue = map['kerberosArmoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberosRc4EncryptionEnabled: (() { final guardedValue = map['kerberosRc4EncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ntlmV1Enabled: (() { final guardedValue = map['ntlmV1Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      syncKerberosPasswords: (() { final guardedValue = map['syncKerberosPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      syncNtlmPasswords: (() { final guardedValue = map['syncNtlmPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      syncOnPremPasswords: (() { final guardedValue = map['syncOnPremPasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tlsV1Enabled: (() { final guardedValue = map['tlsV1Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

