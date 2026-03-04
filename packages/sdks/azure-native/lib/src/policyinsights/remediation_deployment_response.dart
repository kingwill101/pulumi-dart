// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_definition_response.dart';

/// Details of a single deployment created by the remediation.
class RemediationDeploymentResponse {
  /// The time at which the remediation was created.
  final pulumi.Input<String> createdOn;

  /// Resource ID of the template deployment that will remediate the resource.
  final pulumi.Input<String> deploymentId;

  /// Error encountered while remediated the resource.
  final pulumi.Input<ErrorDefinitionResponse> error;

  /// The time at which the remediation deployment was last updated.
  final pulumi.Input<String> lastUpdatedOn;

  /// Resource ID of the resource that is being remediated by the deployment.
  final pulumi.Input<String> remediatedResourceId;

  /// Location of the resource that is being remediated.
  final pulumi.Input<String> resourceLocation;

  /// Status of the remediation deployment.
  final pulumi.Input<String> status;

  /// Creates a new [RemediationDeploymentResponse].
  /// [createdOn] The time at which the remediation was created.
  /// [deploymentId] Resource ID of the template deployment that will remediate the resource.
  /// [error] Error encountered while remediated the resource.
  /// [lastUpdatedOn] The time at which the remediation deployment was last updated.
  /// [remediatedResourceId] Resource ID of the resource that is being remediated by the deployment.
  /// [resourceLocation] Location of the resource that is being remediated.
  /// [status] Status of the remediation deployment.
  RemediationDeploymentResponse({
    required this.createdOn,
    required this.deploymentId,
    required this.error,
    required this.lastUpdatedOn,
    required this.remediatedResourceId,
    required this.resourceLocation,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'deploymentId': deploymentId,
      'error':
          pulumi.Input.mapInputValue<
            ErrorDefinitionResponse,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
      'lastUpdatedOn': lastUpdatedOn,
      'remediatedResourceId': remediatedResourceId,
      'resourceLocation': resourceLocation,
      'status': status,
    };
  }

  factory RemediationDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return RemediationDeploymentResponse(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      deploymentId: pulumi.Input.fromValue(map['deploymentId'] as String),
      error: pulumi.Input.fromValue(
        ErrorDefinitionResponse.fromMap(
          (map['error']! as Map).cast<String, dynamic>(),
        ),
      ),
      lastUpdatedOn: pulumi.Input.fromValue(map['lastUpdatedOn'] as String),
      remediatedResourceId: pulumi.Input.fromValue(
        map['remediatedResourceId'] as String,
      ),
      resourceLocation: pulumi.Input.fromValue(
        map['resourceLocation'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
