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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkManagerId,
    required pulumi.Output<String> subscriptionId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asInput<String>(networkManagerId),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: pulumi.Output.create<String>(map['networkManagerId'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

