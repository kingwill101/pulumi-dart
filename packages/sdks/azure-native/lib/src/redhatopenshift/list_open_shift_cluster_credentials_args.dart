// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redhatopenshift_list_open_shift_cluster_credentials_args_doc}
/// Arguments for listOpenShiftClusterCredentials.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_list_open_shift_cluster_credentials_args_doc}
class ListOpenShiftClusterCredentialsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListOpenShiftClusterCredentialsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  ListOpenShiftClusterCredentialsArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListOpenShiftClusterCredentialsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListOpenShiftClusterCredentialsArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
