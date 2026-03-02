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
  final List<String> autoDiscoveredResources;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Disabled data sources. Disabling these data sources compromises the system.
  final List<String>? disabledDataSources;
  /// Resource display name.
  final String displayName;
  /// List of additional options for exporting to workspace data.
  final List<String>? export;
  /// Resource Id
  final String id;
  /// IoT Hub resource IDs
  final List<String> iotHubs;
  /// The resource location.
  final String? location;
  /// Resource name
  final String name;
  /// List of the configuration status for each recommendation type.
  final List<RecommendationConfigurationPropertiesResponse>? recommendationsConfiguration;
  /// Status of the IoT Security solution.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;
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
  /// [id] Resource Id
  /// [iotHubs] IoT Hub resource IDs
  /// [location] The resource location.
  /// [name] Resource name
  /// [recommendationsConfiguration] List of the configuration status for each recommendation type.
  /// [status] Status of the IoT Security solution.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags
  /// [type] Resource type
  /// [unmaskedIpLoggingStatus] Unmasked IP address logging status
  /// [userDefinedResources] Properties of the IoT Security solution's user defined resources.
  /// [workspace] Workspace resource ID
  GetIotSecuritySolutionResult({
    this.additionalWorkspaces,
    required this.autoDiscoveredResources,
    required this.azureApiVersion,
    this.disabledDataSources,
    required this.displayName,
    this.export,
    required this.id,
    required this.iotHubs,
    this.location,
    required this.name,
    this.recommendationsConfiguration,
    this.status,
    required this.systemData,
    this.tags,
    required this.type,
    this.unmaskedIpLoggingStatus,
    this.userDefinedResources,
    this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalWorkspaces': ?additionalWorkspaces == null ? null : pulumi.Input.encodeList<AdditionalWorkspacesPropertiesResponse, Map<String, dynamic>>(additionalWorkspaces!, (value) => value.toMap()),
      'autoDiscoveredResources': autoDiscoveredResources,
      'azureApiVersion': azureApiVersion,
      'disabledDataSources': ?disabledDataSources,
      'displayName': displayName,
      'export': ?export,
      'id': id,
      'iotHubs': iotHubs,
      'location': ?location,
      'name': name,
      'recommendationsConfiguration': ?recommendationsConfiguration == null ? null : pulumi.Input.encodeList<RecommendationConfigurationPropertiesResponse, Map<String, dynamic>>(recommendationsConfiguration!, (value) => value.toMap()),
      'status': ?status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'unmaskedIpLoggingStatus': ?unmaskedIpLoggingStatus,
      'userDefinedResources': ?userDefinedResources == null ? null : userDefinedResources!.toMap(),
      'workspace': ?workspace,
    };
  }

  factory GetIotSecuritySolutionResult.fromMap(Map<String, dynamic> map) {
    return GetIotSecuritySolutionResult(
      additionalWorkspaces: map['additionalWorkspaces'] == null ? null : pulumi.Input.decodeList<AdditionalWorkspacesPropertiesResponse>(map['additionalWorkspaces']!, (value) => AdditionalWorkspacesPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      autoDiscoveredResources: (map['autoDiscoveredResources'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      disabledDataSources: map['disabledDataSources'] == null ? null : (map['disabledDataSources']! as List).cast<String>(),
      displayName: map['displayName'] as String,
      export: map['export'] == null ? null : (map['export']! as List).cast<String>(),
      id: map['id'] as String,
      iotHubs: (map['iotHubs'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      recommendationsConfiguration: map['recommendationsConfiguration'] == null ? null : pulumi.Input.decodeList<RecommendationConfigurationPropertiesResponse>(map['recommendationsConfiguration']!, (value) => RecommendationConfigurationPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      unmaskedIpLoggingStatus: map['unmaskedIpLoggingStatus'] == null ? null : map['unmaskedIpLoggingStatus']! as String,
      userDefinedResources: map['userDefinedResources'] == null ? null : UserDefinedResourcesPropertiesResponse.fromMap((map['userDefinedResources']! as Map).cast<String, dynamic>()),
      workspace: map['workspace'] == null ? null : map['workspace']! as String,
    );
  }
}

