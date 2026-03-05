// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_subscription_connection_network_manager_subscription_connection_args_doc}
/// The set of arguments for NetworkManagerSubscriptionConnection.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_subscription_connection_network_manager_subscription_connection_args_doc}
class NetworkManagerSubscriptionConnectionArgs {
  /// A description of the Network Manager Subscription Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Network Subscription Network Manager Connection. Changing this forces a new Network Subscription Network Manager Connection to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager which the Subscription is connected to.
  final pulumi.Input<String> networkManagerId;
  /// Specifies the ID of the target Subscription. Changing this forces a new resource to be created.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [NetworkManagerSubscriptionConnectionArgs].
  /// [description] A description of the Network Manager Subscription Connection.
  /// [name] Specifies the name which should be used for this Network Subscription Network Manager Connection. Changing this forces a new Network Subscription Network Manager Connection to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager which the Subscription is connected to.
  /// [subscriptionId] Specifies the ID of the target Subscription. Changing this forces a new resource to be created.
  NetworkManagerSubscriptionConnectionArgs({
    this.description,
    this.name,
    required this.networkManagerId,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'networkManagerId': networkManagerId,
      'subscriptionId': subscriptionId,
    };
  }

  factory NetworkManagerSubscriptionConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerSubscriptionConnectionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerId: pulumi.Input.fromValue(map['networkManagerId'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}

