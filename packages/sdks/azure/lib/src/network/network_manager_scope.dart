// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagerScope {
  /// A list of management group IDs.
  ///
  /// &gt; **Note:** When specifying a scope at the management group level, you need to register the `Microsoft.Network` at the management group scope before deploying a Network Manager, more information can be found in the [Azure document](https://learn.microsoft.com/en-us/azure/virtual-network-manager/concept-network-manager-scope#scope).
  final pulumi.Input<List<String>>? managementGroupIds;
  /// A list of subscription IDs.
  final pulumi.Input<List<String>>? subscriptionIds;

  /// Creates a new [NetworkManagerScope].
  /// [managementGroupIds] A list of management group IDs.
  /// [subscriptionIds] A list of subscription IDs.
  NetworkManagerScope({
    this.managementGroupIds,
    this.subscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupIds': ?managementGroupIds,
      'subscriptionIds': ?subscriptionIds,
    };
  }

  factory NetworkManagerScope.fromMap(Map<String, dynamic> map) {
    return NetworkManagerScope(
      managementGroupIds: (() { final guardedValue = map['managementGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subscriptionIds: (() { final guardedValue = map['subscriptionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

