// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourceconnector_list_appliance_cluster_user_credential_args_doc}
/// Arguments for listApplianceClusterUserCredential.
/// {@endtemplate}
/// {@macro pulumi_resourceconnector_list_appliance_cluster_user_credential_args_doc}
class ListApplianceClusterUserCredentialArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Appliances name.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListApplianceClusterUserCredentialArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Appliances name.
  ListApplianceClusterUserCredentialArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListApplianceClusterUserCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ListApplianceClusterUserCredentialArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

