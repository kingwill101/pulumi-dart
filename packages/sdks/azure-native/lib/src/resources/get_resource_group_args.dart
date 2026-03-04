// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_resource_group_args_doc}
/// Arguments for getResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_get_resource_group_args_doc}
class GetResourceGroupArgs {
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetResourceGroupArgs].
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  GetResourceGroupArgs({required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceGroupName': resourceGroupName};
  }

  factory GetResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
