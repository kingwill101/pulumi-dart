// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_subscription_network_manager_connection_args_doc}
/// Arguments for getSubscriptionNetworkManagerConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_subscription_network_manager_connection_args_doc}
class GetSubscriptionNetworkManagerConnectionArgs {
  /// Name for the network manager connection.
  final pulumi.Input<String> networkManagerConnectionName;

  /// Creates a new [GetSubscriptionNetworkManagerConnectionArgs].
  /// [networkManagerConnectionName] Name for the network manager connection.
  GetSubscriptionNetworkManagerConnectionArgs({
    required pulumi.Output<String> networkManagerConnectionName,
  }) :
      networkManagerConnectionName = pulumi.Input.asInput<String>(networkManagerConnectionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerConnectionName': networkManagerConnectionName,
    };
  }

  factory GetSubscriptionNetworkManagerConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionNetworkManagerConnectionArgs(
      networkManagerConnectionName: pulumi.Output.create<String>(map['networkManagerConnectionName'] as String),
    );
  }
}

