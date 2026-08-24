// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_registrar_domain_get_registrar_domain_args_doc}
/// Arguments for getRegistrarDomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_registrar_domain_get_registrar_domain_args_doc}
class GetRegistrarDomainArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Fully qualified domain name (FQDN) including the extension
  /// (e.g., `example.com`, `mybrand.app`). The domain name uniquely
  /// identifies a registration — the same domain cannot be registered
  /// twice, making it a natural idempotency key for registration requests.
  final pulumi.Input<String> domainName;

  /// Creates a new [GetRegistrarDomainArgs].
  /// [accountId] Identifier
  /// [domainName] Fully qualified domain name (FQDN) including the extension
  const GetRegistrarDomainArgs({
    required this.accountId,
    required this.domainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'domainName': domainName,
    };
  }

  factory GetRegistrarDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistrarDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
    );
  }
}
