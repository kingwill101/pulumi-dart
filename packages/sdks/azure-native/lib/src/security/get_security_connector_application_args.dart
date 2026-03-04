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
    required this.applicationId,
    required this.resourceGroupName,
    required this.securityConnectorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
    };
  }

  factory GetSecurityConnectorApplicationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSecurityConnectorApplicationArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      securityConnectorName: pulumi.Input.fromValue(
        map['securityConnectorName'] as String,
      ),
    );
  }
}
