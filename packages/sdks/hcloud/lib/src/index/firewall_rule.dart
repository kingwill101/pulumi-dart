// ignore_for_file: unused_element, unnecessary_cast


class FirewallRule {
  /// Description of the firewall rule
  final String? description;
  /// List of IPs or CIDRs that are allowed within this Firewall Rule (when `direction`
  /// is `out`)
  final List<String>? destinationIps;
  /// Direction of the Firewall Rule. `in`
  final String direction;
  /// Port of the Firewall Rule. Required when `protocol` is `tcp` or `udp`. You can use `any`
  /// to allow all ports for the specific protocol. Port ranges are also possible: `80-85` allows all ports between 80 and 85.
  final String? port;
  /// Protocol of the Firewall Rule. `tcp`, `icmp`, `udp`, `gre`, `esp`
  final String protocol;
  /// List of IPs or CIDRs that are allowed within this Firewall Rule (when `direction`
  /// is `in`)
  final List<String>? sourceIps;

  /// Creates a new [FirewallRule].
  /// [description] Description of the firewall rule
  /// [destinationIps] List of IPs or CIDRs that are allowed within this Firewall Rule (when `direction`
  /// [direction] Direction of the Firewall Rule. `in`
  /// [port] Port of the Firewall Rule. Required when `protocol` is `tcp` or `udp`. You can use `any`
  /// [protocol] Protocol of the Firewall Rule. `tcp`, `icmp`, `udp`, `gre`, `esp`
  /// [sourceIps] List of IPs or CIDRs that are allowed within this Firewall Rule (when `direction`
  FirewallRule({
    this.description,
    this.destinationIps,
    required this.direction,
    this.port,
    required this.protocol,
    this.sourceIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationIps': ?destinationIps,
      'direction': direction,
      'port': ?port,
      'protocol': protocol,
      'sourceIps': ?sourceIps,
    };
  }

  factory FirewallRule.fromMap(Map<String, dynamic> map) {
    return FirewallRule(
      description: map['description'] == null ? null : map['description'] as String,
      destinationIps: map['destinationIps'] == null ? null : (map['destinationIps'] as List).cast<String>(),
      direction: map['direction'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      protocol: map['protocol'] as String,
      sourceIps: map['sourceIps'] == null ? null : (map['sourceIps'] as List).cast<String>(),
    );
  }
}

