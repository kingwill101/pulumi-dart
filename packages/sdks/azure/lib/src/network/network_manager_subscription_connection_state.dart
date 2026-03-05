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
    this.connectionState,
    this.description,
    this.name,
    this.networkManagerId,
    this.subscriptionId,
  });

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
      connectionState: (() { final guardedValue = map['connectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerId: (() { final guardedValue = map['networkManagerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

