// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_solution_additional_workspace.dart';
import 'security_solution_recommendations_enabled.dart';

/// {@template pulumi_iot_security_solution_security_solution_args_doc}
/// The set of arguments for SecuritySolution.
/// {@endtemplate}
/// {@macro pulumi_iot_security_solution_security_solution_args_doc}
class SecuritySolutionArgs {
  /// A `additional_workspace` block as defined below.
  final pulumi.Input<List<SecuritySolutionAdditionalWorkspace>>? additionalWorkspaces;
  /// A list of disabled data sources for the Iot Security Solution. Possible value is `TwinData`.
  final pulumi.Input<List<String>>? disabledDataSources;
  /// Specifies the Display Name for this Iot Security Solution.
  final pulumi.Input<String> displayName;
  /// Is the Iot Security Solution enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A list of data which is to exported to analytic workspace. Valid values include `RawEvents`.
  final pulumi.Input<List<String>>? eventsToExports;
  /// Specifies the IoT Hub resource IDs to which this Iot Security Solution is applied.
  final pulumi.Input<List<String>> iothubIds;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the Log Analytics Workspace ID to which the security data will be sent.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// Should IP addressed be unmasked in the log? Defaults to `false`.
  final pulumi.Input<bool>? logUnmaskedIpsEnabled;
  /// Specifies the name of the Iot Security Solution. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An Azure Resource Graph query used to set the resources monitored.
  final pulumi.Input<String>? queryForResources;
  /// A list of subscription Ids on which the user defined resources query should be executed.
  final pulumi.Input<List<String>>? querySubscriptionIds;
  /// A `recommendations_enabled` block of options to enable or disable as defined below.
  final pulumi.Input<SecuritySolutionRecommendationsEnabled>? recommendationsEnabled;
  /// Specifies the name of the resource group in which to create the Iot Security Solution. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SecuritySolutionArgs].
  /// [additionalWorkspaces] A `additional_workspace` block as defined below.
  /// [disabledDataSources] A list of disabled data sources for the Iot Security Solution. Possible value is `TwinData`.
  /// [displayName] Specifies the Display Name for this Iot Security Solution.
  /// [enabled] Is the Iot Security Solution enabled? Defaults to `true`.
  /// [eventsToExports] A list of data which is to exported to analytic workspace. Valid values include `RawEvents`.
  /// [iothubIds] Specifies the IoT Hub resource IDs to which this Iot Security Solution is applied.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [logAnalyticsWorkspaceId] Specifies the Log Analytics Workspace ID to which the security data will be sent.
  /// [logUnmaskedIpsEnabled] Should IP addressed be unmasked in the log? Defaults to `false`.
  /// [name] Specifies the name of the Iot Security Solution. Changing this forces a new resource to be created.
  /// [queryForResources] An Azure Resource Graph query used to set the resources monitored.
  /// [querySubscriptionIds] A list of subscription Ids on which the user defined resources query should be executed.
  /// [recommendationsEnabled] A `recommendations_enabled` block of options to enable or disable as defined below.
  /// [resourceGroupName] Specifies the name of the resource group in which to create the Iot Security Solution. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  SecuritySolutionArgs({
    this.additionalWorkspaces,
    this.disabledDataSources,
    required this.displayName,
    this.enabled,
    this.eventsToExports,
    required this.iothubIds,
    this.location,
    this.logAnalyticsWorkspaceId,
    this.logUnmaskedIpsEnabled,
    this.name,
    this.queryForResources,
    this.querySubscriptionIds,
    this.recommendationsEnabled,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalWorkspaces': ?pulumi.Input.mapOptionalInputValue<List<SecuritySolutionAdditionalWorkspace>, List<Map<String, dynamic>>>(additionalWorkspaces, (value) => pulumi.Input.encodeList<SecuritySolutionAdditionalWorkspace, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabledDataSources': ?disabledDataSources,
      'displayName': displayName,
      'enabled': ?enabled,
      'eventsToExports': ?eventsToExports,
      'iothubIds': iothubIds,
      'location': ?location,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'logUnmaskedIpsEnabled': ?logUnmaskedIpsEnabled,
      'name': ?name,
      'queryForResources': ?queryForResources,
      'querySubscriptionIds': ?querySubscriptionIds,
      'recommendationsEnabled': ?pulumi.Input.mapOptionalInputValue<SecuritySolutionRecommendationsEnabled, Map<String, dynamic>>(recommendationsEnabled, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SecuritySolutionArgs.fromMap(Map<String, dynamic> map) {
    return SecuritySolutionArgs(
      additionalWorkspaces: map['additionalWorkspaces'] == null ? null : (pulumi.Input.decodeList<SecuritySolutionAdditionalWorkspace>(map['additionalWorkspaces']!, (value) => SecuritySolutionAdditionalWorkspace.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disabledDataSources: map['disabledDataSources'] == null ? null : ((map['disabledDataSources']! as List).cast<String>()).input(),
      displayName: (map['displayName'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      eventsToExports: map['eventsToExports'] == null ? null : ((map['eventsToExports']! as List).cast<String>()).input(),
      iothubIds: ((map['iothubIds'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId']! as String).input(),
      logUnmaskedIpsEnabled: map['logUnmaskedIpsEnabled'] == null ? null : (map['logUnmaskedIpsEnabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      queryForResources: map['queryForResources'] == null ? null : (map['queryForResources']! as String).input(),
      querySubscriptionIds: map['querySubscriptionIds'] == null ? null : ((map['querySubscriptionIds']! as List).cast<String>()).input(),
      recommendationsEnabled: map['recommendationsEnabled'] == null ? null : (SecuritySolutionRecommendationsEnabled.fromMap((map['recommendationsEnabled']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

