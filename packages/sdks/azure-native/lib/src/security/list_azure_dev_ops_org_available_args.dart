// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_list_azure_dev_ops_org_available_args_doc}
/// Arguments for listAzureDevOpsOrgAvailable.
/// {@endtemplate}
/// {@macro pulumi_security_list_azure_dev_ops_org_available_args_doc}
class ListAzureDevOpsOrgAvailableArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String> securityConnectorName;

  /// Creates a new [ListAzureDevOpsOrgAvailableArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  ListAzureDevOpsOrgAvailableArgs({
    required this.resourceGroupName,
    required this.securityConnectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
    };
  }

  factory ListAzureDevOpsOrgAvailableArgs.fromMap(Map<String, dynamic> map) {
    return ListAzureDevOpsOrgAvailableArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityConnectorName: (map['securityConnectorName'] as String).input(),
    );
  }
}

