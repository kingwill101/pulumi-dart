// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_source_control_args_doc}
/// Arguments for getSourceControl.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_source_control_args_doc}
class GetSourceControlArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Source control Id
  final pulumi.Input<String> sourceControlId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSourceControlArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceControlId] Source control Id
  /// [workspaceName] The name of the workspace.
  GetSourceControlArgs({
    required this.resourceGroupName,
    required this.sourceControlId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sourceControlId': sourceControlId,
      'workspaceName': workspaceName,
    };
  }

  factory GetSourceControlArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceControlArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceControlId: (map['sourceControlId'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

