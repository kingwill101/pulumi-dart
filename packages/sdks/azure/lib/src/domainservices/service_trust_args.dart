// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domainservices_service_trust_service_trust_args_doc}
/// The set of arguments for ServiceTrust.
/// {@endtemplate}
/// {@macro pulumi_domainservices_service_trust_service_trust_args_doc}
class ServiceTrustArgs {
  /// The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created.
  final pulumi.Input<String> domainServiceId;

  /// The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created.
  final pulumi.Input<String>? name;

  /// The password of the inbound trust set in the on-premise Active Directory Domain Service.
  final pulumi.Input<String> password;

  /// Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service.
  final pulumi.Input<List<String>> trustedDomainDnsIps;

  /// The FQDN of the on-premise Active Directory Domain Service.
  final pulumi.Input<String> trustedDomainFqdn;

  /// Creates a new [ServiceTrustArgs].
  /// [domainServiceId] The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created.
  /// [name] The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created.
  /// [password] The password of the inbound trust set in the on-premise Active Directory Domain Service.
  /// [trustedDomainDnsIps] Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service.
  /// [trustedDomainFqdn] The FQDN of the on-premise Active Directory Domain Service.
  ServiceTrustArgs({
    required this.domainServiceId,
    this.name,
    required this.password,
    required this.trustedDomainDnsIps,
    required this.trustedDomainFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainServiceId': domainServiceId,
      'name': ?name,
      'password': password,
      'trustedDomainDnsIps': trustedDomainDnsIps,
      'trustedDomainFqdn': trustedDomainFqdn,
    };
  }

  factory ServiceTrustArgs.fromMap(Map<String, dynamic> map) {
    return ServiceTrustArgs(
      domainServiceId: pulumi.Input.fromValue(map['domainServiceId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      trustedDomainDnsIps: pulumi.Input.fromValue(
        (map['trustedDomainDnsIps'] as List).cast<String>(),
      ),
      trustedDomainFqdn: pulumi.Input.fromValue(
        map['trustedDomainFqdn'] as String,
      ),
    );
  }
}
