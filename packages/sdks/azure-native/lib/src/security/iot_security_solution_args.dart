// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_workspaces_properties.dart';
import 'recommendation_configuration_properties.dart';
import 'user_defined_resources_properties.dart';

/// {@template pulumi_security_iot_security_solution_args_doc}
/// The set of arguments for IotSecuritySolution.
/// {@endtemplate}
/// {@macro pulumi_security_iot_security_solution_args_doc}
class IotSecuritySolutionArgs {
  /// List of additional workspaces
  final pulumi.Input<List<AdditionalWorkspacesProperties>>? additionalWorkspaces;
  /// Disabled data sources. Disabling these data sources compromises the system.
  final pulumi.Input<List<String>>? disabledDataSources;
  /// Resource display name.
  final pulumi.Input<String> displayName;
  /// List of additional options for exporting to workspace data.
  final pulumi.Input<List<String>>? export;
  /// IoT Hub resource IDs
  final pulumi.Input<List<String>> iotHubs;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// List of the configuration status for each recommendation type.
  final pulumi.Input<List<RecommendationConfigurationProperties>>? recommendationsConfiguration;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT Security solution.
  final pulumi.Input<String>? solutionName;
  /// Status of the IoT Security solution.
  final pulumi.Input<String>? status;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Unmasked IP address logging status
  final pulumi.Input<String>? unmaskedIpLoggingStatus;
  /// Properties of the IoT Security solution's user defined resources.
  final pulumi.Input<UserDefinedResourcesProperties>? userDefinedResources;
  /// Workspace resource ID
  final pulumi.Input<String>? workspace;

  /// Creates a new [IotSecuritySolutionArgs].
  /// [additionalWorkspaces] List of additional workspaces
  /// [disabledDataSources] Disabled data sources. Disabling these data sources compromises the system.
  /// [displayName] Resource display name.
  /// [export] List of additional options for exporting to workspace data.
  /// [iotHubs] IoT Hub resource IDs
  /// [location] The resource location.
  /// [recommendationsConfiguration] List of the configuration status for each recommendation type.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [solutionName] The name of the IoT Security solution.
  /// [status] Status of the IoT Security solution.
  /// [tags] Resource tags
  /// [unmaskedIpLoggingStatus] Unmasked IP address logging status
  /// [userDefinedResources] Properties of the IoT Security solution's user defined resources.
  /// [workspace] Workspace resource ID
  IotSecuritySolutionArgs({
    this.additionalWorkspaces,
    this.disabledDataSources,
    required this.displayName,
    this.export,
    required this.iotHubs,
    this.location,
    this.recommendationsConfiguration,
    required this.resourceGroupName,
    this.solutionName,
    this.status,
    this.tags,
    this.unmaskedIpLoggingStatus,
    this.userDefinedResources,
    this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalWorkspaces': ?pulumi.Input.mapOptionalInputValue<List<AdditionalWorkspacesProperties>, List<Map<String, dynamic>>>(additionalWorkspaces, (value) => pulumi.Input.encodeList<AdditionalWorkspacesProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabledDataSources': ?disabledDataSources,
      'displayName': displayName,
      'export': ?export,
      'iotHubs': iotHubs,
      'location': ?location,
      'recommendationsConfiguration': ?pulumi.Input.mapOptionalInputValue<List<RecommendationConfigurationProperties>, List<Map<String, dynamic>>>(recommendationsConfiguration, (value) => pulumi.Input.encodeList<RecommendationConfigurationProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'solutionName': ?solutionName,
      'status': ?status,
      'tags': ?tags,
      'unmaskedIpLoggingStatus': ?unmaskedIpLoggingStatus,
      'userDefinedResources': ?pulumi.Input.mapOptionalInputValue<UserDefinedResourcesProperties, Map<String, dynamic>>(userDefinedResources, (value) => value.toMap()),
      'workspace': ?workspace,
    };
  }

  factory IotSecuritySolutionArgs.fromMap(Map<String, dynamic> map) {
    return IotSecuritySolutionArgs(
      additionalWorkspaces: map['additionalWorkspaces'] == null ? null : (pulumi.Input.decodeList<AdditionalWorkspacesProperties>(map['additionalWorkspaces'], (value) => AdditionalWorkspacesProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disabledDataSources: map['disabledDataSources'] == null ? null : ((map['disabledDataSources'] as List).cast<String>()).input(),
      displayName: (map['displayName'] as String).input(),
      export: map['export'] == null ? null : ((map['export'] as List).cast<String>()).input(),
      iotHubs: ((map['iotHubs'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      recommendationsConfiguration: map['recommendationsConfiguration'] == null ? null : (pulumi.Input.decodeList<RecommendationConfigurationProperties>(map['recommendationsConfiguration'], (value) => RecommendationConfigurationProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      solutionName: map['solutionName'] == null ? null : (map['solutionName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      unmaskedIpLoggingStatus: map['unmaskedIpLoggingStatus'] == null ? null : (map['unmaskedIpLoggingStatus'] as String).input(),
      userDefinedResources: map['userDefinedResources'] == null ? null : (UserDefinedResourcesProperties.fromMap((map['userDefinedResources'] as Map).cast<String, dynamic>())).input(),
      workspace: map['workspace'] == null ? null : (map['workspace'] as String).input(),
    );
  }
}

