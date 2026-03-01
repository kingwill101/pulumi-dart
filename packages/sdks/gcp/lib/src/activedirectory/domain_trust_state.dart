// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainTrust resources.
class DomainTrustState {
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  final pulumi.Input<String>? domain;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  final pulumi.Input<bool>? selectiveAuthentication;
  /// The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  final pulumi.Input<List<String>>? targetDnsIpAddresses;
  /// The fully qualified target domain name which will be in trust with the current domain.
  final pulumi.Input<String>? targetDomainName;
  /// The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// Possible values are: `INBOUND`, `OUTBOUND`, `BIDIRECTIONAL`.
  final pulumi.Input<String>? trustDirection;
  /// The trust secret used for the handshake with the target domain. This will not be stored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? trustHandshakeSecret;
  /// The type of trust represented by the trust resource.
  /// Possible values are: `FOREST`, `EXTERNAL`.
  final pulumi.Input<String>? trustType;

  /// Creates a new [DomainTrustState].
  /// [domain] The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// [project] The ID of the project in which the resource belongs.
  /// [selectiveAuthentication] Whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  /// [targetDnsIpAddresses] The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  /// [targetDomainName] The fully qualified target domain name which will be in trust with the current domain.
  /// [trustDirection] The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// [trustHandshakeSecret] The trust secret used for the handshake with the target domain. This will not be stored.
  /// [trustType] The type of trust represented by the trust resource.
  DomainTrustState({
    pulumi.Output<String>? domain,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? selectiveAuthentication,
    pulumi.Output<List<String>>? targetDnsIpAddresses,
    pulumi.Output<String>? targetDomainName,
    pulumi.Output<String>? trustDirection,
    pulumi.Output<String>? trustHandshakeSecret,
    pulumi.Output<String>? trustType,
  }) :
      domain = pulumi.Input.asOptionalInput<String>(domain),
      project = pulumi.Input.asOptionalInput<String>(project),
      selectiveAuthentication = pulumi.Input.asOptionalInput<bool>(selectiveAuthentication),
      targetDnsIpAddresses = pulumi.Input.asOptionalInput<List<String>>(targetDnsIpAddresses),
      targetDomainName = pulumi.Input.asOptionalInput<String>(targetDomainName),
      trustDirection = pulumi.Input.asOptionalInput<String>(trustDirection),
      trustHandshakeSecret = pulumi.Input.asOptionalInput<String>(trustHandshakeSecret),
      trustType = pulumi.Input.asOptionalInput<String>(trustType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'project': ?project,
      'selectiveAuthentication': ?selectiveAuthentication,
      'targetDnsIpAddresses': ?targetDnsIpAddresses,
      'targetDomainName': ?targetDomainName,
      'trustDirection': ?trustDirection,
      'trustHandshakeSecret': ?trustHandshakeSecret,
      'trustType': ?trustType,
    };
  }

  factory DomainTrustState.fromMap(Map<String, dynamic> map) {
    return DomainTrustState(
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selectiveAuthentication: map['selectiveAuthentication'] == null ? null : pulumi.Output.create<bool>(map['selectiveAuthentication'] as bool),
      targetDnsIpAddresses: map['targetDnsIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['targetDnsIpAddresses'] as List).cast<String>()),
      targetDomainName: map['targetDomainName'] == null ? null : pulumi.Output.create<String>(map['targetDomainName'] as String),
      trustDirection: map['trustDirection'] == null ? null : pulumi.Output.create<String>(map['trustDirection'] as String),
      trustHandshakeSecret: map['trustHandshakeSecret'] == null ? null : pulumi.Output.create<String>(map['trustHandshakeSecret'] as String),
      trustType: map['trustType'] == null ? null : pulumi.Output.create<String>(map['trustType'] as String),
    );
  }
}

