// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpectrumApplicationOriginDns {
  /// The name of the DNS record associated with the origin.
  final pulumi.Input<String?>? name;
  /// The TTL of our resolution of your DNS record in seconds.
  final pulumi.Input<int?>? ttl;
  /// The type of DNS record associated with the origin. "" is used to specify a combination of A/AAAA records.
  /// Available values: "", "A", "AAAA", "SRV".
  final pulumi.Input<String?>? type;

  /// Creates a new [SpectrumApplicationOriginDns].
  /// [name] The name of the DNS record associated with the origin.
  /// [ttl] The TTL of our resolution of your DNS record in seconds.
  /// [type] The type of DNS record associated with the origin. "" is used to specify a combination of A/AAAA records.
  const SpectrumApplicationOriginDns({
    this.name,
    this.ttl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory SpectrumApplicationOriginDns.fromMap(Map<String, dynamic> map) {
    return SpectrumApplicationOriginDns(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
