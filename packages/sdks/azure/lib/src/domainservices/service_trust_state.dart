// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceTrust resources.
class ServiceTrustState {
  /// The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created.
  final pulumi.Input<String?>? domainServiceId;
  /// The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created.
  final pulumi.Input<String?>? name;
  /// The password of the inbound trust set in the on-premise Active Directory Domain Service.
  final pulumi.Input<String?>? password;
  /// Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service.
  final pulumi.Input<List<String>?>? trustedDomainDnsIps;
  /// The FQDN of the on-premise Active Directory Domain Service.
  final pulumi.Input<String?>? trustedDomainFqdn;

  /// Creates a new [ServiceTrustState].
  /// [domainServiceId] The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created.
  /// [name] The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created.
  /// [password] The password of the inbound trust set in the on-premise Active Directory Domain Service.
  /// [trustedDomainDnsIps] Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service.
  /// [trustedDomainFqdn] The FQDN of the on-premise Active Directory Domain Service.
  const ServiceTrustState({
    this.domainServiceId,
    this.name,
    this.password,
    this.trustedDomainDnsIps,
    this.trustedDomainFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainServiceId': ?domainServiceId,
      'name': ?name,
      'password': ?password,
      'trustedDomainDnsIps': ?trustedDomainDnsIps,
      'trustedDomainFqdn': ?trustedDomainFqdn,
    };
  }

  factory ServiceTrustState.fromMap(Map<String, dynamic> map) {
    return ServiceTrustState(
      domainServiceId: (() { final guardedValue = map['domainServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustedDomainDnsIps: (() { final guardedValue = map['trustedDomainDnsIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustedDomainFqdn: (() { final guardedValue = map['trustedDomainFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
