// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistrarDomain.
class GetRegistrarDomainResult {
  /// Identifier
  final String? accountId;
  /// Fully qualified domain name (FQDN) including the extension
  /// (e.g., `example.com`, `mybrand.app`). The domain name uniquely
  /// identifies a registration — the same domain cannot be registered
  /// twice, making it a natural idempotency key for registration requests.
  final String? domainName;

  /// Creates a new [GetRegistrarDomainResult].
  /// [accountId] Identifier
  /// [domainName] Fully qualified domain name (FQDN) including the extension
  const GetRegistrarDomainResult({
    this.accountId,
    this.domainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'domainName': ?domainName,
    };
  }

  factory GetRegistrarDomainResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrarDomainResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
