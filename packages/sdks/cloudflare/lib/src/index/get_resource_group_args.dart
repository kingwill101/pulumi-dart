// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_resource_group_get_resource_group_args_doc}
/// Arguments for getResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_resource_group_get_resource_group_args_doc}
class GetResourceGroupArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// Resource Group identifier tag.
  final pulumi.Input<String> resourceGroupId;

  /// Creates a new [GetResourceGroupArgs].
  /// [accountId] Account identifier tag.
  /// [resourceGroupId] Resource Group identifier tag.
  const GetResourceGroupArgs({
    required this.accountId,
    required this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'resourceGroupId': resourceGroupId,
    };
  }

  factory GetResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
    );
  }
}
