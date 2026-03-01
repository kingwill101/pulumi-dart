// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_search_list_admin_key_args_doc}
/// Arguments for listAdminKey.
/// {@endtemplate}
/// {@macro pulumi_search_list_admin_key_args_doc}
class ListAdminKeyArgs {
  /// The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String> searchServiceName;

  /// Creates a new [ListAdminKeyArgs].
  /// [resourceGroupName] The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  ListAdminKeyArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> searchServiceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      searchServiceName = pulumi.Input.asInput<String>(searchServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'searchServiceName': searchServiceName,
    };
  }

  factory ListAdminKeyArgs.fromMap(Map<String, dynamic> map) {
    return ListAdminKeyArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      searchServiceName: pulumi.Output.create<String>(map['searchServiceName'] as String),
    );
  }
}

