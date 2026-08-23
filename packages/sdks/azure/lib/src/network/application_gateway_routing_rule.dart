// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayRoutingRule {
  /// The ID of the associated Backend Address Pool.
  final pulumi.Input<String>? backendAddressPoolId;
  /// The Name of the Backend Address Pool which should be used for this Routing Rule.
  final pulumi.Input<String> backendAddressPoolName;
  /// The ID of the associated Backend Settings.
  final pulumi.Input<String>? backendId;
  /// The Name of the Backend Settings which should be used for this Routing Rule.
  final pulumi.Input<String> backendName;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The ID of the associated Listener.
  final pulumi.Input<String>? listenerId;
  /// The Name of the Listener which should be used for this Routing Rule.
  final pulumi.Input<String> listenerName;
  /// The Name of this Routing Rule.
  final pulumi.Input<String> name;
  /// The routing rule priority, indicating the order in which rules are evaluated. Possible values range between `1` and `20000`, with `1` being the highest priority and `20000` being the lowest priority.
  final pulumi.Input<int> priority;

  /// Creates a new [ApplicationGatewayRoutingRule].
  /// [backendAddressPoolId] The ID of the associated Backend Address Pool.
  /// [backendAddressPoolName] The Name of the Backend Address Pool which should be used for this Routing Rule.
  /// [backendId] The ID of the associated Backend Settings.
  /// [backendName] The Name of the Backend Settings which should be used for this Routing Rule.
  /// [id] The ID of the Rewrite Rule Set
  /// [listenerId] The ID of the associated Listener.
  /// [listenerName] The Name of the Listener which should be used for this Routing Rule.
  /// [name] The Name of this Routing Rule.
  /// [priority] The routing rule priority, indicating the order in which rules are evaluated. Possible values range between `1` and `20000`, with `1` being the highest priority and `20000` being the lowest priority.
  const ApplicationGatewayRoutingRule({
    this.backendAddressPoolId,
    required this.backendAddressPoolName,
    this.backendId,
    required this.backendName,
    this.id,
    this.listenerId,
    required this.listenerName,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': ?backendAddressPoolId,
      'backendAddressPoolName': backendAddressPoolName,
      'backendId': ?backendId,
      'backendName': backendName,
      'id': ?id,
      'listenerId': ?listenerId,
      'listenerName': listenerName,
      'name': name,
      'priority': priority,
    };
  }

  factory ApplicationGatewayRoutingRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRoutingRule(
      backendAddressPoolId: (() { final guardedValue = map['backendAddressPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendAddressPoolName: pulumi.Input.fromValue(map['backendAddressPoolName'] as String),
      backendId: (() { final guardedValue = map['backendId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendName: pulumi.Input.fromValue(map['backendName'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerName: pulumi.Input.fromValue(map['listenerName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}
