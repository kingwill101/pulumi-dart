// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualNetworkRule resources.
class VirtualNetworkRuleState {
  /// Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`.
  ///
  /// &gt; **Note:** If `ignore_missing_vnet_service_endpoint` is false, and the target subnet does not contain the `Microsoft.SQL` endpoint in the `service_endpoints` array, the deployment will fail when it tries to create the SQL virtual network rule.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// The name of the SQL virtual network rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;
  /// The ID of the subnet from which the SQL server will accept communications.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [VirtualNetworkRuleState].
  /// [ignoreMissingVnetServiceEndpoint] Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to `false`.
  /// [name] The name of the SQL virtual network rule. Changing this forces a new resource to be created.
  /// [serverId] The resource ID of the SQL Server to which this SQL virtual network rule will be applied. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet from which the SQL server will accept communications.
  const VirtualNetworkRuleState({
    this.ignoreMissingVnetServiceEndpoint,
    this.name,
    this.serverId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'name': ?name,
      'serverId': ?serverId,
      'subnetId': ?subnetId,
    };
  }

  factory VirtualNetworkRuleState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleState(
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

