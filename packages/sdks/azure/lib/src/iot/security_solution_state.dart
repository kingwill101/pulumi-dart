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
  const SecuritySolutionState({
    this.additionalWorkspaces,
    this.disabledDataSources,
    this.displayName,
    this.enabled,
    this.eventsToExports,
    this.iothubIds,
    this.location,
    this.logAnalyticsWorkspaceId,
    this.logUnmaskedIpsEnabled,
    this.name,
    this.queryForResources,
    this.querySubscriptionIds,
    this.recommendationsEnabled,
    this.resourceGroupName,
    this.tags,
  });

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
      additionalWorkspaces: (() { final guardedValue = map['additionalWorkspaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecuritySolutionAdditionalWorkspace>(guardedValue, (value) => SecuritySolutionAdditionalWorkspace.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disabledDataSources: (() { final guardedValue = map['disabledDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventsToExports: (() { final guardedValue = map['eventsToExports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      iothubIds: (() { final guardedValue = map['iothubIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logUnmaskedIpsEnabled: (() { final guardedValue = map['logUnmaskedIpsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryForResources: (() { final guardedValue = map['queryForResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      querySubscriptionIds: (() { final guardedValue = map['querySubscriptionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      recommendationsEnabled: (() { final guardedValue = map['recommendationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecuritySolutionRecommendationsEnabled.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

