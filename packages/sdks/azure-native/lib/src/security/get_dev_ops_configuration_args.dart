// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_dev_ops_configuration_args_doc}
/// Arguments for getDevOpsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_security_get_dev_ops_configuration_args_doc}
class GetDevOpsConfigurationArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String> securityConnectorName;

  /// Creates a new [GetDevOpsConfigurationArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  const GetDevOpsConfigurationArgs({
    required this.resourceGroupName,
    required this.securityConnectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
    };
  }

  factory GetDevOpsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetDevOpsConfigurationArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityConnectorName: pulumi.Input.fromValue(map['securityConnectorName'] as String),
    );
  }
}

