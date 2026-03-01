// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_security_connector_application_args_doc}
/// Arguments for getSecurityConnectorApplication.
/// {@endtemplate}
/// {@macro pulumi_security_get_security_connector_application_args_doc}
class GetSecurityConnectorApplicationArgs {
  /// The security Application key - unique key for the standard application
  final pulumi.Input<String> applicationId;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String> securityConnectorName;

  /// Creates a new [GetSecurityConnectorApplicationArgs].
  /// [applicationId] The security Application key - unique key for the standard application
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  GetSecurityConnectorApplicationArgs({
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> securityConnectorName,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityConnectorName = pulumi.Input.asInput<String>(securityConnectorName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
    };
  }

  factory GetSecurityConnectorApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityConnectorApplicationArgs(
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityConnectorName: pulumi.Output.create<String>(map['securityConnectorName'] as String),
    );
  }
}

