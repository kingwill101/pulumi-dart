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
    this.domainUrn,
    this.ipAddress,
    this.name,
    this.ttl,
  });

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
      domainUrn: (() { final guardedValue = map['domainUrn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

