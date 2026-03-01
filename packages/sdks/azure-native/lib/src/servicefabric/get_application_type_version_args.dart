// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_application_type_version_args_doc}
/// Arguments for getApplicationTypeVersion.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_application_type_version_args_doc}
class GetApplicationTypeVersionArgs {
  /// The name of the application type name resource.
  final pulumi.Input<String> applicationTypeName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The application type version.
  final pulumi.Input<String> version;

  /// Creates a new [GetApplicationTypeVersionArgs].
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] The application type version.
  GetApplicationTypeVersionArgs({
    required pulumi.Output<String> applicationTypeName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> version,
  }) :
      applicationTypeName = pulumi.Input.asInput<String>(applicationTypeName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTypeName': applicationTypeName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetApplicationTypeVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationTypeVersionArgs(
      applicationTypeName: pulumi.Output.create<String>(map['applicationTypeName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

