// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of a DNS Domain delegated to the Communications Gateway.
class DnsDelegationPropertiesResponse {
  /// Domain name to delegate
  final pulumi.Input<String>? domain;
  /// The Azure-hosted DNS Name Servers for the delegated DNS Zones
  final pulumi.Input<List<String>> nameServers;

  /// Creates a new [DnsDelegationPropertiesResponse].
  /// [domain] Domain name to delegate
  /// [nameServers] The Azure-hosted DNS Name Servers for the delegated DNS Zones
  DnsDelegationPropertiesResponse({
    this.domain,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'nameServers': nameServers,
    };
  }

  factory DnsDelegationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DnsDelegationPropertiesResponse(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameServers: pulumi.Input.fromValue((map['nameServers'] as List).cast<String>()),
    );
  }
}

