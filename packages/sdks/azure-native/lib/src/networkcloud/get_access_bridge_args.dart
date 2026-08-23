// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_access_bridge_args_doc}
/// Arguments for getAccessBridge.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_access_bridge_args_doc}
class GetAccessBridgeArgs {
  /// The name of the access bridge.
  final pulumi.Input<String> accessBridgeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessBridgeArgs].
  /// [accessBridgeName] The name of the access bridge.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAccessBridgeArgs({
    required this.accessBridgeName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessBridgeName': accessBridgeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessBridgeArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessBridgeArgs(
      accessBridgeName: pulumi.Input.fromValue(map['accessBridgeName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
