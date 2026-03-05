// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceSecurity {
  /// (Optional) Whether the Kerberos Armoring is enabled.
  final pulumi.Input<bool> kerberosArmoringEnabled;
  /// (Optional) Whether the Kerberos RC4 Encryption is enabled.
  final pulumi.Input<bool> kerberosRc4EncryptionEnabled;
  /// Whether legacy NTLM v1 support is enabled.
  final pulumi.Input<bool> ntlmV1Enabled;
  /// Whether Kerberos password hashes are synchronized to the managed domain.
  final pulumi.Input<bool> syncKerberosPasswords;
  /// Whether NTLM password hashes are synchronized to the managed domain.
  final pulumi.Input<bool> syncNtlmPasswords;
  /// Whether on-premises password hashes are synchronized to the managed domain.
  final pulumi.Input<bool> syncOnPremPasswords;
  /// Whether legacy TLS v1 support is enabled.
  final pulumi.Input<bool> tlsV1Enabled;

  /// Creates a new [GetServiceSecurity].
  /// [kerberosArmoringEnabled] (Optional) Whether the Kerberos Armoring is enabled.
  /// [kerberosRc4EncryptionEnabled] (Optional) Whether the Kerberos RC4 Encryption is enabled.
  /// [ntlmV1Enabled] Whether legacy NTLM v1 support is enabled.
  /// [syncKerberosPasswords] Whether Kerberos password hashes are synchronized to the managed domain.
  /// [syncNtlmPasswords] Whether NTLM password hashes are synchronized to the managed domain.
  /// [syncOnPremPasswords] Whether on-premises password hashes are synchronized to the managed domain.
  /// [tlsV1Enabled] Whether legacy TLS v1 support is enabled.
  GetServiceSecurity({
    required this.kerberosArmoringEnabled,
    required this.kerberosRc4EncryptionEnabled,
    required this.ntlmV1Enabled,
    required this.syncKerberosPasswords,
    required this.syncNtlmPasswords,
    required this.syncOnPremPasswords,
    required this.tlsV1Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kerberosArmoringEnabled': kerberosArmoringEnabled,
      'kerberosRc4EncryptionEnabled': kerberosRc4EncryptionEnabled,
      'ntlmV1Enabled': ntlmV1Enabled,
      'syncKerberosPasswords': syncKerberosPasswords,
      'syncNtlmPasswords': syncNtlmPasswords,
      'syncOnPremPasswords': syncOnPremPasswords,
      'tlsV1Enabled': tlsV1Enabled,
    };
  }

  factory GetServiceSecurity.fromMap(Map<String, dynamic> map) {
    return GetServiceSecurity(
      kerberosArmoringEnabled: pulumi.Input.fromValue(map['kerberosArmoringEnabled'] as bool),
      kerberosRc4EncryptionEnabled: pulumi.Input.fromValue(map['kerberosRc4EncryptionEnabled'] as bool),
      ntlmV1Enabled: pulumi.Input.fromValue(map['ntlmV1Enabled'] as bool),
      syncKerberosPasswords: pulumi.Input.fromValue(map['syncKerberosPasswords'] as bool),
      syncNtlmPasswords: pulumi.Input.fromValue(map['syncNtlmPasswords'] as bool),
      syncOnPremPasswords: pulumi.Input.fromValue(map['syncOnPremPasswords'] as bool),
      tlsV1Enabled: pulumi.Input.fromValue(map['tlsV1Enabled'] as bool),
    );
  }
}

