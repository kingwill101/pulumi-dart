// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_solution_additional_workspace.dart';
import 'security_solution_recommendations_enabled.dart';

/// Input properties used for looking up and filtering SecuritySolution resources.
class SecuritySolutionState {
  /// A `additional_workspace` block as defined below.
  final pulumi.Input<List<SecuritySolutionAdditionalWorkspace>>? additionalWorkspaces;
  /// A list of disabled data sources for the Iot Security Solution. Possible value is `TwinData`.
  final pulumi.Input<List<String>>? disabledDataSources;
  /// Specifies the Display Name for this Iot Security Solution.
  final pulumi.Input<String>? displayName;
  /// Is the Iot Security Solution enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A list of data which is to exported to analytic workspace. Valid values include `RawEvents`.
  final pulumi.Input<List<String>>? eventsToExports;
  /// Specifies the IoT Hub resource IDs to which this Iot Security Solution is applied.
  final pulumi.Input<List<String>>? iothubIds;
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
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SecuritySolutionState].
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
  SecuritySolutionState({
    pulumi.Output<List<SecuritySolutionAdditionalWorkspace>>? additionalWorkspaces,
    pulumi.Output<List<String>>? disabledDataSources,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<String>>? eventsToExports,
    pulumi.Output<List<String>>? iothubIds,
    pulumi.Output<String>? location,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<bool>? logUnmaskedIpsEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? queryForResources,
    pulumi.Output<List<String>>? querySubscriptionIds,
    pulumi.Output<SecuritySolutionRecommendationsEnabled>? recommendationsEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      additionalWorkspaces = pulumi.Input.asOptionalInput<List<SecuritySolutionAdditionalWorkspace>>(additionalWorkspaces),
      disabledDataSources = pulumi.Input.asOptionalInput<List<String>>(disabledDataSources),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      eventsToExports = pulumi.Input.asOptionalInput<List<String>>(eventsToExports),
      iothubIds = pulumi.Input.asOptionalInput<List<String>>(iothubIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      logUnmaskedIpsEnabled = pulumi.Input.asOptionalInput<bool>(logUnmaskedIpsEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      queryForResources = pulumi.Input.asOptionalInput<String>(queryForResources),
      querySubscriptionIds = pulumi.Input.asOptionalInput<List<String>>(querySubscriptionIds),
      recommendationsEnabled = pulumi.Input.asOptionalInput<SecuritySolutionRecommendationsEnabled>(recommendationsEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalWorkspaces': ?pulumi.Input.mapOptionalInputValue<List<SecuritySolutionAdditionalWorkspace>, List<Map<String, dynamic>>>(additionalWorkspaces, (value) => pulumi.Input.encodeList<SecuritySolutionAdditionalWorkspace, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disabledDataSources': ?disabledDataSources,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'eventsToExports': ?eventsToExports,
      'iothubIds': ?iothubIds,
      'location': ?location,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'logUnmaskedIpsEnabled': ?logUnmaskedIpsEnabled,
      'name': ?name,
      'queryForResources': ?queryForResources,
      'querySubscriptionIds': ?querySubscriptionIds,
      'recommendationsEnabled': ?pulumi.Input.mapOptionalInputValue<SecuritySolutionRecommendationsEnabled, Map<String, dynamic>>(recommendationsEnabled, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SecuritySolutionState.fromMap(Map<String, dynamic> map) {
    return SecuritySolutionState(
      additionalWorkspaces: map['additionalWorkspaces'] == null ? null : pulumi.Output.create<List<SecuritySolutionAdditionalWorkspace>>(pulumi.Input.decodeList<SecuritySolutionAdditionalWorkspace>(map['additionalWorkspaces'], (value) => SecuritySolutionAdditionalWorkspace.fromMap((value as Map).cast<String, dynamic>()))),
      disabledDataSources: map['disabledDataSources'] == null ? null : pulumi.Output.create<List<String>>((map['disabledDataSources'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      eventsToExports: map['eventsToExports'] == null ? null : pulumi.Output.create<List<String>>((map['eventsToExports'] as List).cast<String>()),
      iothubIds: map['iothubIds'] == null ? null : pulumi.Output.create<List<String>>((map['iothubIds'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      logUnmaskedIpsEnabled: map['logUnmaskedIpsEnabled'] == null ? null : pulumi.Output.create<bool>(map['logUnmaskedIpsEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      queryForResources: map['queryForResources'] == null ? null : pulumi.Output.create<String>(map['queryForResources'] as String),
      querySubscriptionIds: map['querySubscriptionIds'] == null ? null : pulumi.Output.create<List<String>>((map['querySubscriptionIds'] as List).cast<String>()),
      recommendationsEnabled: map['recommendationsEnabled'] == null ? null : pulumi.Output.create<SecuritySolutionRecommendationsEnabled>(SecuritySolutionRecommendationsEnabled.fromMap((map['recommendationsEnabled'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

