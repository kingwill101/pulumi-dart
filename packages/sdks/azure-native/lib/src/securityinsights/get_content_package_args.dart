// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_content_package_args_doc}
/// Arguments for getContentPackage.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_content_package_args_doc}
class GetContentPackageArgs {
  /// package Id
  final pulumi.Input<String> packageId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetContentPackageArgs].
  /// [packageId] package Id
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetContentPackageArgs({
    required pulumi.Output<String> packageId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      packageId = pulumi.Input.asInput<String>(packageId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageId': packageId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetContentPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetContentPackageArgs(
      packageId: pulumi.Output.create<String>(map['packageId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

