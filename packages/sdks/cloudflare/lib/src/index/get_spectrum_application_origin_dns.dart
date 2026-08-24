// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpectrumApplicationOriginDns {
  /// The name of the DNS record associated with the origin.
  final pulumi.Input<String> name;
  /// The TTL of our resolution of your DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// The type of DNS record associated with the origin. "" is used to specify a combination of A/AAAA records.
  /// Available values: "", "A", "AAAA", "SRV".
  final pulumi.Input<String> type;

  /// Creates a new [GetSpectrumApplicationOriginDns].
  /// [name] The name of the DNS record associated with the origin.
  /// [ttl] The TTL of our resolution of your DNS record in seconds.
  /// [type] The type of DNS record associated with the origin. "" is used to specify a combination of A/AAAA records.
  const GetSpectrumApplicationOriginDns({
    required this.name,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'ttl': ttl,
      'type': type,
    };
  }

  factory GetSpectrumApplicationOriginDns.fromMap(Map<String, dynamic> map) {
    return GetSpectrumApplicationOriginDns(
      name: pulumi.Input.fromValue(map['name'] as String),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
