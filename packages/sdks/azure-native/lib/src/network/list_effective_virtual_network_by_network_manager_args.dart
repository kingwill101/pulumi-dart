// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_effective_virtual_network_by_network_manager_args_doc}
/// Arguments for listEffectiveVirtualNetworkByNetworkManager.
/// {@endtemplate}
/// {@macro pulumi_network_list_effective_virtual_network_by_network_manager_args_doc}
class ListEffectiveVirtualNetworkByNetworkManagerArgs {
  /// Conditional Members.
  final pulumi.Input<String>? conditionalMembers;

  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Continuation token for pagination, capturing the next page size and offset, as well as the context of the query.
  final pulumi.Input<String>? skipToken;

  /// An optional query parameter which specifies the maximum number of records to be returned by the server.
  final pulumi.Input<int>? top;

  /// Creates a new [ListEffectiveVirtualNetworkByNetworkManagerArgs].
  /// [conditionalMembers] Conditional Members.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] Continuation token for pagination, capturing the next page size and offset, as well as the context of the query.
  /// [top] An optional query parameter which specifies the maximum number of records to be returned by the server.
  ListEffectiveVirtualNetworkByNetworkManagerArgs({
    this.conditionalMembers,
    required this.networkManagerName,
    required this.resourceGroupName,
    this.skipToken,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalMembers': ?conditionalMembers,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'top': ?top,
    };
  }

  factory ListEffectiveVirtualNetworkByNetworkManagerArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListEffectiveVirtualNetworkByNetworkManagerArgs(
      conditionalMembers: (() {
        final guardedValue = map['conditionalMembers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkManagerName: pulumi.Input.fromValue(
        map['networkManagerName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      skipToken: (() {
        final guardedValue = map['skipToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      top: (() {
        final guardedValue = map['top'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
