// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_subscription_network_manager_connection_args_doc}
/// The set of arguments for SubscriptionNetworkManagerConnection.
/// {@endtemplate}
/// {@macro pulumi_network_subscription_network_manager_connection_args_doc}
class SubscriptionNetworkManagerConnectionArgs {
  /// A description of the network manager connection.
  final pulumi.Input<String>? description;
  /// Name for the network manager connection.
  final pulumi.Input<String>? networkManagerConnectionName;
  /// Network Manager Id.
  final pulumi.Input<String>? networkManagerId;

  /// Creates a new [SubscriptionNetworkManagerConnectionArgs].
  /// [description] A description of the network manager connection.
  /// [networkManagerConnectionName] Name for the network manager connection.
  /// [networkManagerId] Network Manager Id.
  const SubscriptionNetworkManagerConnectionArgs({
    this.description,
    this.networkManagerConnectionName,
    this.networkManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkManagerConnectionName': ?networkManagerConnectionName,
      'networkManagerId': ?networkManagerId,
    };
  }

  factory SubscriptionNetworkManagerConnectionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionNetworkManagerConnectionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerConnectionName: (() { final guardedValue = map['networkManagerConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerId: (() { final guardedValue = map['networkManagerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

