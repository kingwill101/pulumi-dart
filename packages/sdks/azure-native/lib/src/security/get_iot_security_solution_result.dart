// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_workspaces_properties_response.dart';
import 'recommendation_configuration_properties_response.dart';
import 'system_data_response.dart';
import 'user_defined_resources_properties_response.dart';

/// Result data returned by getIotSecuritySolution.
class GetIotSecuritySolutionResult {
  /// List of additional workspaces
  final List<AdditionalWorkspacesPropertiesResponse>? additionalWorkspaces;
  /// List of resources that were automatically discovered as relevant to the security solution.
  final List<String>? autoDiscoveredResources;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Disabled data sources. Disabling these data sources compromises the system.
  final List<String>? disabledDataSources;
  /// Resource display name.
  final String? displayName;
  /// List of additional options for exporting to workspace data.
  final List<String>? export;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// IoT Hub resource IDs
  final List<String>? iotHubs;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// List of the configuration status for each recommendation type.
  final List<RecommendationConfigurationPropertiesResponse>? recommendationsConfiguration;
  /// Status of the IoT Security solution.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Unmasked IP address logging status
  final String? unmaskedIpLoggingStatus;
  /// Properties of the IoT Security solution's user defined resources.
  final UserDefinedResourcesPropertiesResponse? userDefinedResources;
  /// Workspace resource ID
  final String? workspace;

  /// Creates a new [GetIotSecuritySolutionResult].
  /// [additionalWorkspaces] List of additional workspaces
  /// [autoDiscoveredResources] List of resources that were automatically discovered as relevant to the security solution.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disabledDataSources] Disabled data sources. Disabling these data sources compromises the system.
  /// [displayName] Resource display name.
  /// [export] List of additional options for exporting to workspace data.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [iotHubs] IoT Hub resource IDs
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [recommendationsConfiguration] List of the configuration status for each recommendation type.
  /// [status] Status of the IoT Security solution.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [unmaskedIpLoggingStatus] Unmasked IP address logging status
  /// [userDefinedResources] Properties of the IoT Security solution's user defined resources.
  /// [workspace] Workspace resource ID
  GetIotSecuritySolutionResult({
    this.additionalWorkspaces,
    this.autoDiscoveredResources,
    this.azureApiVersion,
    this.disabledDataSources,
    this.displayName,
    this.export,
    this.id,
    this.iotHubs,
    this.location,
    this.name,
    this.recommendationsConfiguration,
    String? status,
    this.systemData,
    this.tags,
    this.type,
    String? unmaskedIpLoggingStatus,
    this.userDefinedResources,
    this.workspace,
  }) : status = status ?? 'Enabled', unmaskedIpLoggingStatus = unmaskedIpLoggingStatus ?? 'Disabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalWorkspaces': ?(() { final guardedValue = additionalWorkspaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<AdditionalWorkspacesPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autoDiscoveredResources': ?autoDiscoveredResources,
      'azureApiVersion': ?azureApiVersion,
      'disabledDataSources': ?disabledDataSources,
      'displayName': ?displayName,
      'export': ?export,
      'id': ?id,
      'iotHubs': ?iotHubs,
      'location': ?location,
      'name': ?name,
      'recommendationsConfiguration': ?(() { final guardedValue = recommendationsConfiguration; if (guardedValue == null) return null; return pulumi.Input.encodeList<RecommendationConfigurationPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'unmaskedIpLoggingStatus': ?unmaskedIpLoggingStatus,
      'userDefinedResources': ?userDefinedResources?.toMap(),
      'workspace': ?workspace,
    };
  }

  factory GetIotSecuritySolutionResult.fromMap(Map<String, dynamic> map) {
    return GetIotSecuritySolutionResult(
      additionalWorkspaces: (() { final guardedValue = map['additionalWorkspaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AdditionalWorkspacesPropertiesResponse>(guardedValue, (value) => AdditionalWorkspacesPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      autoDiscoveredResources: (() { final guardedValue = map['autoDiscoveredResources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabledDataSources: (() { final guardedValue = map['disabledDataSources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iotHubs: (() { final guardedValue = map['iotHubs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recommendationsConfiguration: (() { final guardedValue = map['recommendationsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RecommendationConfigurationPropertiesResponse>(guardedValue, (value) => RecommendationConfigurationPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unmaskedIpLoggingStatus: (() { final guardedValue = map['unmaskedIpLoggingStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userDefinedResources: (() { final guardedValue = map['userDefinedResources']; if (guardedValue == null) return null; return UserDefinedResourcesPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workspace: (() { final guardedValue = map['workspace']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
