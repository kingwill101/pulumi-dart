// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_list_git_lab_group_available_args_doc}
/// Arguments for listGitLabGroupAvailable.
/// {@endtemplate}
/// {@macro pulumi_security_list_git_lab_group_available_args_doc}
class ListGitLabGroupAvailableArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String> securityConnectorName;

  /// Creates a new [ListGitLabGroupAvailableArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  ListGitLabGroupAvailableArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> securityConnectorName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityConnectorName = pulumi.Input.asInput<String>(securityConnectorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
    };
  }

  factory ListGitLabGroupAvailableArgs.fromMap(Map<String, dynamic> map) {
    return ListGitLabGroupAvailableArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityConnectorName: pulumi.Output.create<String>(map['securityConnectorName'] as String),
    );
  }
}

