// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwarecloudsimple_get_dedicated_cloud_node_args_doc}
/// Arguments for getDedicatedCloudNode.
/// {@endtemplate}
/// {@macro pulumi_vmwarecloudsimple_get_dedicated_cloud_node_args_doc}
class GetDedicatedCloudNodeArgs {
  /// dedicated cloud node name
  final pulumi.Input<String> dedicatedCloudNodeName;

  /// The name of the resource group
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDedicatedCloudNodeArgs].
  /// [dedicatedCloudNodeName] dedicated cloud node name
  /// [resourceGroupName] The name of the resource group
  GetDedicatedCloudNodeArgs({
    required this.dedicatedCloudNodeName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedCloudNodeName': dedicatedCloudNodeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDedicatedCloudNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedCloudNodeArgs(
      dedicatedCloudNodeName: pulumi.Input.fromValue(
        map['dedicatedCloudNodeName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
