// ignore_for_file: unused_element, unnecessary_cast

import 'error_definition_response.dart';

/// Details of a single deployment created by the remediation.
class RemediationDeploymentResponse {
  /// The time at which the remediation was created.
  final String createdOn;
  /// Resource ID of the template deployment that will remediate the resource.
  final String deploymentId;
  /// Error encountered while remediated the resource.
  final ErrorDefinitionResponse error;
  /// The time at which the remediation deployment was last updated.
  final String lastUpdatedOn;
  /// Resource ID of the resource that is being remediated by the deployment.
  final String remediatedResourceId;
  /// Location of the resource that is being remediated.
  final String resourceLocation;
  /// Status of the remediation deployment.
  final String status;

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
      'error': error.toMap(),
      'lastUpdatedOn': lastUpdatedOn,
      'remediatedResourceId': remediatedResourceId,
      'resourceLocation': resourceLocation,
      'status': status,
    };
  }

  factory RemediationDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return RemediationDeploymentResponse(
      createdOn: map['createdOn'] as String,
      deploymentId: map['deploymentId'] as String,
      error: ErrorDefinitionResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      lastUpdatedOn: map['lastUpdatedOn'] as String,
      remediatedResourceId: map['remediatedResourceId'] as String,
      resourceLocation: map['resourceLocation'] as String,
      status: map['status'] as String,
    );
  }
}

