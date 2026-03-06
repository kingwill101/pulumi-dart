// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_security_connector_args_doc}
/// Arguments for getSecurityConnector.
/// {@endtemplate}
/// {@macro pulumi_security_get_security_connector_args_doc}
class GetSecurityConnectorArgs {
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String> securityConnectorName;

  /// Creates a new [GetSecurityConnectorArgs].
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  const GetSecurityConnectorArgs({
    required this.resourceGroupName,
    required this.securityConnectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
    };
  }

  factory GetSecurityConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityConnectorArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityConnectorName: pulumi.Input.fromValue(map['securityConnectorName'] as String),
    );
  }
}

