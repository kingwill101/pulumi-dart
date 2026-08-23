// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayRoutingRule {
  /// The ID of the associated Backend Address Pool.
  final pulumi.Input<String> backendAddressPoolId;
  /// The Name of the Backend Address Pool which is used for this Routing Rule.
  final pulumi.Input<String> backendAddressPoolName;
  /// The ID of the associated Backend Settings.
  final pulumi.Input<String> backendId;
  /// The Name of the Backend Settings which is used for this Routing Rule.
  final pulumi.Input<String> backendName;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The ID of the associated Listener.
  final pulumi.Input<String> listenerId;
  /// The Name of the Listener which is used for this Routing Rule.
  final pulumi.Input<String> listenerName;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The Priority of this Routing Rule.
  final pulumi.Input<int> priority;

  /// Creates a new [GetApplicationGatewayRoutingRule].
  /// [backendAddressPoolId] The ID of the associated Backend Address Pool.
  /// [backendAddressPoolName] The Name of the Backend Address Pool which is used for this Routing Rule.
  /// [backendId] The ID of the associated Backend Settings.
  /// [backendName] The Name of the Backend Settings which is used for this Routing Rule.
  /// [id] The ID of the Rewrite Rule Set
  /// [listenerId] The ID of the associated Listener.
  /// [listenerName] The Name of the Listener which is used for this Routing Rule.
  /// [name] The name of this Application Gateway.
  /// [priority] The Priority of this Routing Rule.
  const GetApplicationGatewayRoutingRule({
    required this.backendAddressPoolId,
    required this.backendAddressPoolName,
    required this.backendId,
    required this.backendName,
    required this.id,
    required this.listenerId,
    required this.listenerName,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': backendAddressPoolId,
      'backendAddressPoolName': backendAddressPoolName,
      'backendId': backendId,
      'backendName': backendName,
      'id': id,
      'listenerId': listenerId,
      'listenerName': listenerName,
      'name': name,
      'priority': priority,
    };
  }

  factory GetApplicationGatewayRoutingRule.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRoutingRule(
      backendAddressPoolId: pulumi.Input.fromValue(map['backendAddressPoolId'] as String),
      backendAddressPoolName: pulumi.Input.fromValue(map['backendAddressPoolName'] as String),
      backendId: pulumi.Input.fromValue(map['backendId'] as String),
      backendName: pulumi.Input.fromValue(map['backendName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      listenerName: pulumi.Input.fromValue(map['listenerName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}
