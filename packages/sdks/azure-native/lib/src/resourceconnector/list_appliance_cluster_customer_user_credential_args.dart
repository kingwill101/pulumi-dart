// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourceconnector_list_appliance_cluster_customer_user_credential_args_doc}
/// Arguments for listApplianceClusterCustomerUserCredential.
/// {@endtemplate}
/// {@macro pulumi_resourceconnector_list_appliance_cluster_customer_user_credential_args_doc}
class ListApplianceClusterCustomerUserCredentialArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Appliances name.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListApplianceClusterCustomerUserCredentialArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Appliances name.
  const ListApplianceClusterCustomerUserCredentialArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListApplianceClusterCustomerUserCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ListApplianceClusterCustomerUserCredentialArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
