// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_activedirectory_domain_trust_domain_trust_args_doc}
/// The set of arguments for DomainTrust.
/// {@endtemplate}
/// {@macro pulumi_activedirectory_domain_trust_domain_trust_args_doc}
class DomainTrustArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  final pulumi.Input<String> domain;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  final pulumi.Input<bool>? selectiveAuthentication;
  /// The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  final pulumi.Input<List<String>> targetDnsIpAddresses;
  /// The fully qualified target domain name which will be in trust with the current domain.
  final pulumi.Input<String> targetDomainName;
  /// The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// Possible values are: `INBOUND`, `OUTBOUND`, `BIDIRECTIONAL`.
  final pulumi.Input<String> trustDirection;
  /// The trust secret used for the handshake with the target domain. This will not be stored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> trustHandshakeSecret;
  /// The type of trust represented by the trust resource.
  /// Possible values are: `FOREST`, `EXTERNAL`.
  final pulumi.Input<String> trustType;

  /// Creates a new [DomainTrustArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [domain] The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// [project] The ID of the project in which the resource belongs.
  /// [selectiveAuthentication] Whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  /// [targetDnsIpAddresses] The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  /// [targetDomainName] The fully qualified target domain name which will be in trust with the current domain.
  /// [trustDirection] The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// [trustHandshakeSecret] The trust secret used for the handshake with the target domain. This will not be stored.
  /// [trustType] The type of trust represented by the trust resource.
  const DomainTrustArgs({
    this.deletionPolicy,
    required this.domain,
    this.project,
    this.selectiveAuthentication,
    required this.targetDnsIpAddresses,
    required this.targetDomainName,
    required this.trustDirection,
    required this.trustHandshakeSecret,
    required this.trustType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'domain': domain,
      'project': ?project,
      'selectiveAuthentication': ?selectiveAuthentication,
      'targetDnsIpAddresses': targetDnsIpAddresses,
      'targetDomainName': targetDomainName,
      'trustDirection': trustDirection,
      'trustHandshakeSecret': trustHandshakeSecret,
      'trustType': trustType,
    };
  }

  factory DomainTrustArgs.fromMap(Map<String, dynamic> map) {
    return DomainTrustArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectiveAuthentication: (() { final guardedValue = map['selectiveAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetDnsIpAddresses: pulumi.Input.fromValue((map['targetDnsIpAddresses'] as List).cast<String>()),
      targetDomainName: pulumi.Input.fromValue(map['targetDomainName'] as String),
      trustDirection: pulumi.Input.fromValue(map['trustDirection'] as String),
      trustHandshakeSecret: pulumi.Input.fromValue(map['trustHandshakeSecret'] as String),
      trustType: pulumi.Input.fromValue(map['trustType'] as String),
    );
  }
}
