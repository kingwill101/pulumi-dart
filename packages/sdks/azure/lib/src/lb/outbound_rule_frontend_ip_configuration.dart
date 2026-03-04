// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OutboundRuleFrontendIpConfiguration {
  /// The ID of the Load Balancer Outbound Rule.
  final pulumi.Input<String>? id;

  /// The name of the Frontend IP Configuration.
  final pulumi.Input<String> name;

  /// Creates a new [OutboundRuleFrontendIpConfiguration].
  /// [id] The ID of the Load Balancer Outbound Rule.
  /// [name] The name of the Frontend IP Configuration.
  OutboundRuleFrontendIpConfiguration({this.id, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'name': name};
  }

  factory OutboundRuleFrontendIpConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return OutboundRuleFrontendIpConfiguration(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
