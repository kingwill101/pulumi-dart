// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_info_response.dart';
import 'repository_resource_info_response.dart';
import 'repository_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSourceControl.
class GetSourceControlResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Array of source control content types.
  final List<String> contentTypes;

  /// A description of the source control
  final String? description;

  /// The display name of the source control
  final String displayName;

  /// Etag of the azure resource
  final String? etag;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// Information regarding the latest deployment for the source control.
  final DeploymentInfoResponse? lastDeploymentInfo;

  /// The name of the resource
  final String name;

  /// The repository type of the source control
  final String repoType;

  /// Repository metadata.
  final RepositoryResponse repository;

  /// Information regarding the resources created in user's repository.
  final RepositoryResourceInfoResponse? repositoryResourceInfo;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// The version number associated with the source control
  final String? version;

  /// Creates a new [GetSourceControlResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contentTypes] Array of source control content types.
  /// [description] A description of the source control
  /// [displayName] The display name of the source control
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastDeploymentInfo] Information regarding the latest deployment for the source control.
  /// [name] The name of the resource
  /// [repoType] The repository type of the source control
  /// [repository] Repository metadata.
  /// [repositoryResourceInfo] Information regarding the resources created in user's repository.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] The version number associated with the source control
  GetSourceControlResult({
    required this.azureApiVersion,
    required this.contentTypes,
    this.description,
    required this.displayName,
    this.etag,
    required this.id,
    this.lastDeploymentInfo,
    required this.name,
    required this.repoType,
    required this.repository,
    this.repositoryResourceInfo,
    required this.systemData,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'contentTypes': contentTypes,
      'description': ?description,
      'displayName': displayName,
      'etag': ?etag,
      'id': id,
      'lastDeploymentInfo': ?lastDeploymentInfo?.toMap(),
      'name': name,
      'repoType': repoType,
      'repository': repository.toMap(),
      'repositoryResourceInfo': ?repositoryResourceInfo?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetSourceControlResult.fromMap(Map<String, dynamic> map) {
    return GetSourceControlResult(
      azureApiVersion: map['azureApiVersion'] as String,
      contentTypes: (map['contentTypes'] as List).cast<String>(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: map['displayName'] as String,
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      lastDeploymentInfo: (() {
        final guardedValue = map['lastDeploymentInfo'];
        if (guardedValue == null) return null;
        return DeploymentInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      name: map['name'] as String,
      repoType: map['repoType'] as String,
      repository: RepositoryResponse.fromMap(
        (map['repository']! as Map).cast<String, dynamic>(),
      ),
      repositoryResourceInfo: (() {
        final guardedValue = map['repositoryResourceInfo'];
        if (guardedValue == null) return null;
        return RepositoryResourceInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
