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
    this.domain,
    this.project,
    this.selectiveAuthentication,
    this.targetDnsIpAddresses,
    this.targetDomainName,
    this.trustDirection,
    this.trustHandshakeSecret,
    this.trustType,
  });

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
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      selectiveAuthentication: map['selectiveAuthentication'] == null ? null : (map['selectiveAuthentication'] as bool).input(),
      targetDnsIpAddresses: map['targetDnsIpAddresses'] == null ? null : ((map['targetDnsIpAddresses'] as List).cast<String>()).input(),
      targetDomainName: map['targetDomainName'] == null ? null : (map['targetDomainName'] as String).input(),
      trustDirection: map['trustDirection'] == null ? null : (map['trustDirection'] as String).input(),
      trustHandshakeSecret: map['trustHandshakeSecret'] == null ? null : (map['trustHandshakeSecret'] as String).input(),
      trustType: map['trustType'] == null ? null : (map['trustType'] as String).input(),
    );
  }
}

