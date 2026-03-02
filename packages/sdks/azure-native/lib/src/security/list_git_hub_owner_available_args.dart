// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_list_git_hub_owner_available_args_doc}
/// Arguments for listGitHubOwnerAvailable.
/// {@endtemplate}
/// {@macro pulumi_security_list_git_hub_owner_available_args_doc}
class ListGitHubOwnerAvailableArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String> securityConnectorName;

  /// Creates a new [ListGitHubOwnerAvailableArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  ListGitHubOwnerAvailableArgs({
    required this.resourceGroupName,
    required this.securityConnectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
    };
  }

  factory ListGitHubOwnerAvailableArgs.fromMap(Map<String, dynamic> map) {
    return ListGitHubOwnerAvailableArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityConnectorName: (map['securityConnectorName'] as String).input(),
    );
  }
}

