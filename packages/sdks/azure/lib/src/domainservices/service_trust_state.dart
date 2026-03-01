// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceTrust resources.
class ServiceTrustState {
  /// The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created.
  final pulumi.Input<String>? domainServiceId;
  /// The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created.
  final pulumi.Input<String>? name;
  /// The password of the inbound trust set in the on-premise Active Directory Domain Service.
  final pulumi.Input<String>? password;
  /// Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service.
  final pulumi.Input<List<String>>? trustedDomainDnsIps;
  /// The FQDN of the on-premise Active Directory Domain Service.
  final pulumi.Input<String>? trustedDomainFqdn;

  /// Creates a new [ServiceTrustState].
  /// [domainServiceId] The ID of the Active Directory Domain Service. Changing this forces a new Active Directory Domain Service Trust to be created.
  /// [name] The name which should be used for this Active Directory Domain Service Trust. Changing this forces a new Active Directory Domain Service Trust to be created.
  /// [password] The password of the inbound trust set in the on-premise Active Directory Domain Service.
  /// [trustedDomainDnsIps] Specifies a list of DNS IPs that are used to resolve the on-premise Active Directory Domain Service.
  /// [trustedDomainFqdn] The FQDN of the on-premise Active Directory Domain Service.
  ServiceTrustState({
    pulumi.Output<String>? domainServiceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<List<String>>? trustedDomainDnsIps,
    pulumi.Output<String>? trustedDomainFqdn,
  }) :
      domainServiceId = pulumi.Input.asOptionalInput<String>(domainServiceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      trustedDomainDnsIps = pulumi.Input.asOptionalInput<List<String>>(trustedDomainDnsIps),
      trustedDomainFqdn = pulumi.Input.asOptionalInput<String>(trustedDomainFqdn);

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
      domainServiceId: map['domainServiceId'] == null ? null : pulumi.Output.create<String>(map['domainServiceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      trustedDomainDnsIps: map['trustedDomainDnsIps'] == null ? null : pulumi.Output.create<List<String>>((map['trustedDomainDnsIps'] as List).cast<String>()),
      trustedDomainFqdn: map['trustedDomainFqdn'] == null ? null : pulumi.Output.create<String>(map['trustedDomainFqdn'] as String),
    );
  }
}

