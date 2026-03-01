// ignore_for_file: unused_element, unnecessary_cast


class OutboundRuleFrontendIpConfiguration {
  /// The ID of the Load Balancer Outbound Rule.
  final String? id;
  /// The name of the Frontend IP Configuration.
  final String name;

  /// Creates a new [OutboundRuleFrontendIpConfiguration].
  /// [id] The ID of the Load Balancer Outbound Rule.
  /// [name] The name of the Frontend IP Configuration.
  OutboundRuleFrontendIpConfiguration({
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
    };
  }

  factory OutboundRuleFrontendIpConfiguration.fromMap(Map<String, dynamic> map) {
    return OutboundRuleFrontendIpConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
    );
  }
}

