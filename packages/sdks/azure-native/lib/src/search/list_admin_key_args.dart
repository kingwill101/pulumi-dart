// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_search_list_admin_key_args_doc}
/// Arguments for listAdminKey.
/// {@endtemplate}
/// {@macro pulumi_search_list_admin_key_args_doc}
class ListAdminKeyArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String> searchServiceName;

  /// Creates a new [ListAdminKeyArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  const ListAdminKeyArgs({
    required this.resourceGroupName,
    required this.searchServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'searchServiceName': searchServiceName,
    };
  }

  factory ListAdminKeyArgs.fromMap(Map<String, dynamic> map) {
    return ListAdminKeyArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      searchServiceName: pulumi.Input.fromValue(map['searchServiceName'] as String),
    );
  }
}
