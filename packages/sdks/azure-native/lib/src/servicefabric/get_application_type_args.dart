// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_application_type_args_doc}
/// Arguments for getApplicationType.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_application_type_args_doc}
class GetApplicationTypeArgs {
  /// The name of the application type name resource.
  final pulumi.Input<String> applicationTypeName;

  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationTypeArgs].
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetApplicationTypeArgs({
    required this.applicationTypeName,
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTypeName': applicationTypeName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationTypeArgs(
      applicationTypeName: pulumi.Input.fromValue(
        map['applicationTypeName'] as String,
      ),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
