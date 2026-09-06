// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_info_response.dart';
import 'pull_request_response.dart';
import 'repository_resource_info_response.dart';
import 'repository_response.dart';
import 'service_principal_response.dart';
import 'system_data_response.dart';
import 'workload_identity_federation_response.dart';

/// Result data returned by getSourceControl.
class GetSourceControlResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Array of source control content types.
  final List<String>? contentTypes;
  /// A description of the source control
  final String? description;
  /// The display name of the source control
  final String? displayName;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Information regarding the latest deployment for the source control.
  final DeploymentInfoResponse? lastDeploymentInfo;
  /// The name of the resource
  final String? name;
  /// Information regarding the pull request of the source control.
  final PullRequestResponse? pullRequest;
  /// The repository type of the source control
  final String? repoType;
  /// Repository metadata.
  final RepositoryResponse? repository;
  /// Information regarding the resources created in user's repository.
  final RepositoryResourceInfoResponse? repositoryResourceInfo;
  /// Service principal metadata.
  final ServicePrincipalResponse? servicePrincipal;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The version number associated with the source control
  final String? version;
  /// Workload Identity metadata.
  final WorkloadIdentityFederationResponse? workloadIdentityFederation;

  /// Creates a new [GetSourceControlResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contentTypes] Array of source control content types.
  /// [description] A description of the source control
  /// [displayName] The display name of the source control
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastDeploymentInfo] Information regarding the latest deployment for the source control.
  /// [name] The name of the resource
  /// [pullRequest] Information regarding the pull request of the source control.
  /// [repoType] The repository type of the source control
  /// [repository] Repository metadata.
  /// [repositoryResourceInfo] Information regarding the resources created in user's repository.
  /// [servicePrincipal] Service principal metadata.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] The version number associated with the source control
  /// [workloadIdentityFederation] Workload Identity metadata.
  const GetSourceControlResult({
    this.azureApiVersion,
    this.contentTypes,
    this.description,
    this.displayName,
    this.etag,
    this.id,
    this.lastDeploymentInfo,
    this.name,
    this.pullRequest,
    this.repoType,
    this.repository,
    this.repositoryResourceInfo,
    this.servicePrincipal,
    this.systemData,
    this.type,
    this.version,
    this.workloadIdentityFederation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'contentTypes': ?contentTypes,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'id': ?id,
      'lastDeploymentInfo': ?lastDeploymentInfo?.toMap(),
      'name': ?name,
      'pullRequest': ?pullRequest?.toMap(),
      'repoType': ?repoType,
      'repository': ?repository?.toMap(),
      'repositoryResourceInfo': ?repositoryResourceInfo?.toMap(),
      'servicePrincipal': ?servicePrincipal?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'version': ?version,
      'workloadIdentityFederation': ?workloadIdentityFederation?.toMap(),
    };
  }

  factory GetSourceControlResult.fromMap(Map<String, dynamic> map) {
    return GetSourceControlResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentTypes: (() { final guardedValue = map['contentTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastDeploymentInfo: (() { final guardedValue = map['lastDeploymentInfo']; if (guardedValue == null) return null; return DeploymentInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pullRequest: (() { final guardedValue = map['pullRequest']; if (guardedValue == null) return null; return PullRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      repoType: (() { final guardedValue = map['repoType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return RepositoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      repositoryResourceInfo: (() { final guardedValue = map['repositoryResourceInfo']; if (guardedValue == null) return null; return RepositoryResourceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return ServicePrincipalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadIdentityFederation: (() { final guardedValue = map['workloadIdentityFederation']; if (guardedValue == null) return null; return WorkloadIdentityFederationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
