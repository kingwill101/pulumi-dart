// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerSubscriptionConnection resources.
class NetworkManagerSubscriptionConnectionState {
  /// The Connection state of the Network Manager Subscription Connection.
  final pulumi.Input<String>? connectionState;
  /// A description of the Network Manager Subscription Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Network Subscription Network Manager Connection. Changing this forces a new Network Subscription Network Manager Connection to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager which the Subscription is connected to.
  final pulumi.Input<String>? networkManagerId;
  /// Specifies the ID of the target Subscription. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [NetworkManagerSubscriptionConnectionState].
  /// [connectionState] The Connection state of the Network Manager Subscription Connection.
  /// [description] A description of the Network Manager Subscription Connection.
  /// [name] Specifies the name which should be used for this Network Subscription Network Manager Connection. Changing this forces a new Network Subscription Network Manager Connection to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager which the Subscription is connected to.
  /// [subscriptionId] Specifies the ID of the target Subscription. Changing this forces a new resource to be created.
  NetworkManagerSubscriptionConnectionState({
    pulumi.Output<String>? connectionState,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkManagerId,
    pulumi.Output<String>? subscriptionId,
  }) :
      connectionState = pulumi.Input.asOptionalInput<String>(connectionState),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asOptionalInput<String>(networkManagerId),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionState': ?connectionState,
      'description': ?description,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory NetworkManagerSubscriptionConnectionState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerSubscriptionConnectionState(
      connectionState: map['connectionState'] == null ? null : pulumi.Output.create<String>(map['connectionState'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: map['networkManagerId'] == null ? null : pulumi.Output.create<String>(map['networkManagerId'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

