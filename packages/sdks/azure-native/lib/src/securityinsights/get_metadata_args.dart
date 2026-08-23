// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_metadata_args_doc}
/// Arguments for getMetadata.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_metadata_args_doc}
class GetMetadataArgs {
  /// The Metadata name.
  final pulumi.Input<String> metadataName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetMetadataArgs].
  /// [metadataName] The Metadata name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  const GetMetadataArgs({
    required this.metadataName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataName': metadataName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetMetadataArgs.fromMap(Map<String, dynamic> map) {
    return GetMetadataArgs(
      metadataName: pulumi.Input.fromValue(map['metadataName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
