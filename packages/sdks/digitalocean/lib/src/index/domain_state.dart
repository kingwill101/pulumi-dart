// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// The uniform resource name of the domain
  final pulumi.Input<String>? domainUrn;
  /// The IP address of the domain. If specified, this IP
  /// is used to created an initial A record for the domain.
  final pulumi.Input<String>? ipAddress;
  /// The name of the domain
  final pulumi.Input<String>? name;
  /// The TTL value of the domain
  final pulumi.Input<int>? ttl;

  /// Creates a new [DomainState].
  /// [domainUrn] The uniform resource name of the domain
  /// [ipAddress] The IP address of the domain. If specified, this IP
  /// [name] The name of the domain
  /// [ttl] The TTL value of the domain
  DomainState({
    pulumi.Output<String>? domainUrn,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? name,
    pulumi.Output<int>? ttl,
  }) :
      domainUrn = pulumi.Input.asOptionalInput<String>(domainUrn),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      ttl = pulumi.Input.asOptionalInput<int>(ttl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainUrn': ?domainUrn,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'ttl': ?ttl,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      domainUrn: map['domainUrn'] == null ? null : pulumi.Output.create<String>(map['domainUrn'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
    );
  }
}

