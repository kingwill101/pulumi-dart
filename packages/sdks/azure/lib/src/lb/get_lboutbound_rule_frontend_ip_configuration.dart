// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLBOutboundRuleFrontendIpConfiguration {
  /// The ID of the Frontend IP Configuration.
  final pulumi.Input<String> id;
  /// The name of this Load Balancer Outbound Rule.
  final pulumi.Input<String> name;

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
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

