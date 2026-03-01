// ignore_for_file: unused_element, unnecessary_cast


class GetServiceSecurity {
  /// (Optional) Whether the Kerberos Armoring is enabled.
  final bool kerberosArmoringEnabled;
  /// (Optional) Whether the Kerberos RC4 Encryption is enabled.
  final bool kerberosRc4EncryptionEnabled;
  /// Whether legacy NTLM v1 support is enabled.
  final bool ntlmV1Enabled;
  /// Whether Kerberos password hashes are synchronized to the managed domain.
  final bool syncKerberosPasswords;
  /// Whether NTLM password hashes are synchronized to the managed domain.
  final bool syncNtlmPasswords;
  /// Whether on-premises password hashes are synchronized to the managed domain.
  final bool syncOnPremPasswords;
  /// Whether legacy TLS v1 support is enabled.
  final bool tlsV1Enabled;

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
      kerberosArmoringEnabled: map['kerberosArmoringEnabled'] as bool,
      kerberosRc4EncryptionEnabled: map['kerberosRc4EncryptionEnabled'] as bool,
      ntlmV1Enabled: map['ntlmV1Enabled'] as bool,
      syncKerberosPasswords: map['syncKerberosPasswords'] as bool,
      syncNtlmPasswords: map['syncNtlmPasswords'] as bool,
      syncOnPremPasswords: map['syncOnPremPasswords'] as bool,
      tlsV1Enabled: map['tlsV1Enabled'] as bool,
    );
  }
}

