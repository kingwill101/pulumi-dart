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
  final pulumi.Input<List<AdditionalWorkspacesProperties>?>? additionalWorkspaces;
  /// Disabled data sources. Disabling these data sources compromises the system.
  final pulumi.Input<List<dynamic>?>? disabledDataSources;
  /// Resource display name.
  final pulumi.Input<String> displayName;
  /// List of additional options for exporting to workspace data.
  final pulumi.Input<List<dynamic>?>? export;
  /// IoT Hub resource IDs
  final pulumi.Input<List<String>> iotHubs;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// List of the configuration status for each recommendation type.
  final pulumi.Input<List<RecommendationConfigurationProperties>?>? recommendationsConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT Security solution.
  final pulumi.Input<String?>? solutionName;
  /// Status of the IoT Security solution.
  final pulumi.Input<dynamic>? status;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Unmasked IP address logging status
  final pulumi.Input<dynamic>? unmaskedIpLoggingStatus;
  /// Properties of the IoT Security solution's user defined resources.
  final pulumi.Input<UserDefinedResourcesProperties?>? userDefinedResources;
  /// Workspace resource ID
  final pulumi.Input<String?>? workspace;

  /// Creates a new [IotSecuritySolutionArgs].
  /// [additionalWorkspaces] List of additional workspaces
  /// [disabledDataSources] Disabled data sources. Disabling these data sources compromises the system.
  /// [displayName] Resource display name.
  /// [export] List of additional options for exporting to workspace data.
  /// [iotHubs] IoT Hub resource IDs
  /// [location] The geo-location where the resource lives
  /// [recommendationsConfiguration] List of the configuration status for each recommendation type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionName] The name of the IoT Security solution.
  /// [status] Status of the IoT Security solution.
  /// [tags] Resource tags.
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
    pulumi.Input<dynamic>? status,
    this.tags,
    pulumi.Input<dynamic>? unmaskedIpLoggingStatus,
    this.userDefinedResources,
    this.workspace,
  }) : status = status ?? pulumi.Input.fromValue('Enabled'), unmaskedIpLoggingStatus = unmaskedIpLoggingStatus ?? pulumi.Input.fromValue('Disabled');

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
      additionalWorkspaces: (() { final guardedValue = map['additionalWorkspaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalWorkspacesProperties>(guardedValue, (value) => AdditionalWorkspacesProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disabledDataSources: (() { final guardedValue = map['disabledDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      iotHubs: pulumi.Input.fromValue((map['iotHubs'] as List).cast<String>()),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recommendationsConfiguration: (() { final guardedValue = map['recommendationsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecommendationConfigurationProperties>(guardedValue, (value) => RecommendationConfigurationProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      solutionName: (() { final guardedValue = map['solutionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      unmaskedIpLoggingStatus: (() { final guardedValue = map['unmaskedIpLoggingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      userDefinedResources: (() { final guardedValue = map['userDefinedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserDefinedResourcesProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspace: (() { final guardedValue = map['workspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
