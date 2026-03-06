// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redhatopenshift_list_open_shift_cluster_admin_credentials_args_doc}
/// Arguments for listOpenShiftClusterAdminCredentials.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_list_open_shift_cluster_admin_credentials_args_doc}
class ListOpenShiftClusterAdminCredentialsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListOpenShiftClusterAdminCredentialsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  const ListOpenShiftClusterAdminCredentialsArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListOpenShiftClusterAdminCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListOpenShiftClusterAdminCredentialsArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

