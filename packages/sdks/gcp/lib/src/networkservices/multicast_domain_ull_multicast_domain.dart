// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MulticastDomainUllMulticastDomain {
  /// The preconfigured Ultra-Low-Latency domain name.
  final pulumi.Input<String?>? preconfiguredUllDomain;

  /// Creates a new [MulticastDomainUllMulticastDomain].
  /// [preconfiguredUllDomain] The preconfigured Ultra-Low-Latency domain name.
  const MulticastDomainUllMulticastDomain({
    this.preconfiguredUllDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preconfiguredUllDomain': ?preconfiguredUllDomain,
    };
  }

  factory MulticastDomainUllMulticastDomain.fromMap(Map<String, dynamic> map) {
    return MulticastDomainUllMulticastDomain(
      preconfiguredUllDomain: (() { final guardedValue = map['preconfiguredUllDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
