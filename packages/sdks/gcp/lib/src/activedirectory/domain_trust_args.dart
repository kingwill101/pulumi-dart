// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_activedirectory_domain_trust_domain_trust_args_doc}
/// The set of arguments for DomainTrust.
/// {@endtemplate}
/// {@macro pulumi_activedirectory_domain_trust_domain_trust_args_doc}
class DomainTrustArgs {
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
  /// [domain] The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// [project] The ID of the project in which the resource belongs.
  /// [selectiveAuthentication] Whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  /// [targetDnsIpAddresses] The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  /// [targetDomainName] The fully qualified target domain name which will be in trust with the current domain.
  /// [trustDirection] The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// [trustHandshakeSecret] The trust secret used for the handshake with the target domain. This will not be stored.
  /// [trustType] The type of trust represented by the trust resource.
  DomainTrustArgs({
    required pulumi.Output<String> domain,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? selectiveAuthentication,
    required pulumi.Output<List<String>> targetDnsIpAddresses,
    required pulumi.Output<String> targetDomainName,
    required pulumi.Output<String> trustDirection,
    required pulumi.Output<String> trustHandshakeSecret,
    required pulumi.Output<String> trustType,
  }) :
      domain = pulumi.Input.asInput<String>(domain),
      project = pulumi.Input.asOptionalInput<String>(project),
      selectiveAuthentication = pulumi.Input.asOptionalInput<bool>(selectiveAuthentication),
      targetDnsIpAddresses = pulumi.Input.asInput<List<String>>(targetDnsIpAddresses),
      targetDomainName = pulumi.Input.asInput<String>(targetDomainName),
      trustDirection = pulumi.Input.asInput<String>(trustDirection),
      trustHandshakeSecret = pulumi.Input.asInput<String>(trustHandshakeSecret),
      trustType = pulumi.Input.asInput<String>(trustType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      domain: pulumi.Output.create<String>(map['domain'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selectiveAuthentication: map['selectiveAuthentication'] == null ? null : pulumi.Output.create<bool>(map['selectiveAuthentication'] as bool),
      targetDnsIpAddresses: pulumi.Output.create<List<String>>((map['targetDnsIpAddresses'] as List).cast<String>()),
      targetDomainName: pulumi.Output.create<String>(map['targetDomainName'] as String),
      trustDirection: pulumi.Output.create<String>(map['trustDirection'] as String),
      trustHandshakeSecret: pulumi.Output.create<String>(map['trustHandshakeSecret'] as String),
      trustType: pulumi.Output.create<String>(map['trustType'] as String),
    );
  }
}

