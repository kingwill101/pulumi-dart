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
  GetSecurityConnectorArgs({
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

  factory GetSecurityConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityConnectorArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityConnectorName: pulumi.Output.create<String>(map['securityConnectorName'] as String),
    );
  }
}

