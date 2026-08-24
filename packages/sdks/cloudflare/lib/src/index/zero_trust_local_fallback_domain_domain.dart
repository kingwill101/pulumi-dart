// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustLocalFallbackDomainDomain {
  /// A description of the fallback domain, displayed in the client UI.
  final pulumi.Input<String?>? description;
  /// A list of IP addresses to handle domain resolution.
  final pulumi.Input<List<String>?>? dnsServers;
  /// The domain suffix to match when resolving locally.
  final pulumi.Input<String> suffix;

  /// Creates a new [ZeroTrustLocalFallbackDomainDomain].
  /// [description] A description of the fallback domain, displayed in the client UI.
  /// [dnsServers] A list of IP addresses to handle domain resolution.
  /// [suffix] The domain suffix to match when resolving locally.
  const ZeroTrustLocalFallbackDomainDomain({
    this.description,
    this.dnsServers,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dnsServers': ?dnsServers,
      'suffix': suffix,
    };
  }

  factory ZeroTrustLocalFallbackDomainDomain.fromMap(Map<String, dynamic> map) {
    return ZeroTrustLocalFallbackDomainDomain(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      suffix: pulumi.Input.fromValue(map['suffix'] as String),
    );
  }
}
