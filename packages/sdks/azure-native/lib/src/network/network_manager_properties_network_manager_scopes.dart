// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope of Network Manager.
class NetworkManagerPropertiesNetworkManagerScopes {
  /// List of management groups.
  final pulumi.Input<List<String>>? managementGroups;
  /// List of subscriptions.
  final pulumi.Input<List<String>>? subscriptions;

  /// Creates a new [NetworkManagerPropertiesNetworkManagerScopes].
  /// [managementGroups] List of management groups.
  /// [subscriptions] List of subscriptions.
  const NetworkManagerPropertiesNetworkManagerScopes({
    this.managementGroups,
    this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroups': ?managementGroups,
      'subscriptions': ?subscriptions,
    };
  }

  factory NetworkManagerPropertiesNetworkManagerScopes.fromMap(Map<String, dynamic> map) {
    return NetworkManagerPropertiesNetworkManagerScopes(
      managementGroups: (() { final guardedValue = map['managementGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

