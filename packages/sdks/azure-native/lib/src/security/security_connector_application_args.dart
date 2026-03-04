// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_security_connector_application_args_doc}
/// The set of arguments for SecurityConnectorApplication.
/// {@endtemplate}
/// {@macro pulumi_security_security_connector_application_args_doc}
class SecurityConnectorApplicationArgs {
  /// The security Application key - unique key for the standard application
  final pulumi.Input<String>? applicationId;

  /// description of the application
  final pulumi.Input<String>? description;

  /// display name of the application
  final pulumi.Input<String>? displayName;

  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The security connector name.
  final pulumi.Input<String> securityConnectorName;

  /// The application source, what it affects, e.g. Assessments
  final pulumi.Input<String> sourceResourceType;

  /// Creates a new [SecurityConnectorApplicationArgs].
  /// [applicationId] The security Application key - unique key for the standard application
  /// [description] description of the application
  /// [displayName] display name of the application
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  /// [sourceResourceType] The application source, what it affects, e.g. Assessments
  SecurityConnectorApplicationArgs({
    this.applicationId,
    this.description,
    this.displayName,
    required this.resourceGroupName,
    required this.securityConnectorName,
    required this.sourceResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'description': ?description,
      'displayName': ?displayName,
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': securityConnectorName,
      'sourceResourceType': sourceResourceType,
    };
  }

  factory SecurityConnectorApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityConnectorApplicationArgs(
      applicationId: (() {
        final guardedValue = map['applicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      securityConnectorName: pulumi.Input.fromValue(
        map['securityConnectorName'] as String,
      ),
      sourceResourceType: pulumi.Input.fromValue(
        map['sourceResourceType'] as String,
      ),
    );
  }
}
