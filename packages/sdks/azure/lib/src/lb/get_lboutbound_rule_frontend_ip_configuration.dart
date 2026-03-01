// ignore_for_file: unused_element, unnecessary_cast


class GetLBOutboundRuleFrontendIpConfiguration {
  /// The ID of the Frontend IP Configuration.
  final String id;
  /// The name of this Load Balancer Outbound Rule.
  final String name;

  /// Creates a new [GetLBOutboundRuleFrontendIpConfiguration].
  /// [id] The ID of the Frontend IP Configuration.
  /// [name] The name of this Load Balancer Outbound Rule.
  GetLBOutboundRuleFrontendIpConfiguration({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetLBOutboundRuleFrontendIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetLBOutboundRuleFrontendIpConfiguration(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

