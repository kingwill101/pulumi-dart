// ignore_for_file: unused_element, unnecessary_cast


class GetNodeFqdn {
  /// The FQDN node's address family.
  final String? addressFamily;
  /// Specifies if the node should scale to the IP address set returned by DNS.
  final String autopopulate;
  /// The number of attempts to resolve a domain name.
  final int downinterval;
  /// The amount of time before sending the next DNS query.
  final String interval;
  /// Name of the node.
  final String? name;

  /// Creates a new [GetNodeFqdn].
  /// [addressFamily] The FQDN node's address family.
  /// [autopopulate] Specifies if the node should scale to the IP address set returned by DNS.
  /// [downinterval] The number of attempts to resolve a domain name.
  /// [interval] The amount of time before sending the next DNS query.
  /// [name] Name of the node.
  GetNodeFqdn({
    this.addressFamily,
    required this.autopopulate,
    required this.downinterval,
    required this.interval,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'autopopulate': autopopulate,
      'downinterval': downinterval,
      'interval': interval,
      'name': ?name,
    };
  }

  factory GetNodeFqdn.fromMap(Map<String, dynamic> map) {
    return GetNodeFqdn(
      addressFamily: map['addressFamily'] == null ? null : map['addressFamily'] as String,
      autopopulate: map['autopopulate'] as String,
      downinterval: map['downinterval'] as int,
      interval: map['interval'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

