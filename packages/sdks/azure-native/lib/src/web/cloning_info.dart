// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information needed for cloning operation.
class CloningInfo {
  /// Application setting overrides for cloned app. If specified, these settings override the settings cloned
  /// from source app. Otherwise, application settings from source app are retained.
  final pulumi.Input<Map<String, String>>? appSettingsOverrides;
  /// <code>true</code> to clone custom hostnames from source app; otherwise, <code>false</code>.
  final pulumi.Input<bool>? cloneCustomHostNames;
  /// <code>true</code> to clone source control from source app; otherwise, <code>false</code>.
  final pulumi.Input<bool>? cloneSourceControl;
  /// <code>true</code> to configure load balancing for source and destination app.
  final pulumi.Input<bool>? configureLoadBalancing;
  /// Correlation ID of cloning operation. This ID ties multiple cloning operations
  /// together to use the same snapshot.
  final pulumi.Input<String>? correlationId;
  /// App Service Environment.
  final pulumi.Input<String>? hostingEnvironment;
  /// <code>true</code> to overwrite destination app; otherwise, <code>false</code>.
  final pulumi.Input<bool>? overwrite;
  /// ARM resource ID of the source app. App resource ID is of the form
  /// /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName} for production slots and
  /// /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/slots/{slotName} for other slots.
  final pulumi.Input<String> sourceWebAppId;
  /// Location of source app ex: West US or North Europe
  final pulumi.Input<String>? sourceWebAppLocation;
  /// ARM resource ID of the Traffic Manager profile to use, if it exists. Traffic Manager resource ID is of the form
  /// /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{profileName}.
  final pulumi.Input<String>? trafficManagerProfileId;
  /// Name of Traffic Manager profile to create. This is only needed if Traffic Manager profile does not already exist.
  final pulumi.Input<String>? trafficManagerProfileName;

  /// Creates a new [CloningInfo].
  /// [appSettingsOverrides] Application setting overrides for cloned app. If specified, these settings override the settings cloned
  /// [cloneCustomHostNames] <code>true</code> to clone custom hostnames from source app; otherwise, <code>false</code>.
  /// [cloneSourceControl] <code>true</code> to clone source control from source app; otherwise, <code>false</code>.
  /// [configureLoadBalancing] <code>true</code> to configure load balancing for source and destination app.
  /// [correlationId] Correlation ID of cloning operation. This ID ties multiple cloning operations
  /// [hostingEnvironment] App Service Environment.
  /// [overwrite] <code>true</code> to overwrite destination app; otherwise, <code>false</code>.
  /// [sourceWebAppId] ARM resource ID of the source app. App resource ID is of the form
  /// [sourceWebAppLocation] Location of source app ex: West US or North Europe
  /// [trafficManagerProfileId] ARM resource ID of the Traffic Manager profile to use, if it exists. Traffic Manager resource ID is of the form
  /// [trafficManagerProfileName] Name of Traffic Manager profile to create. This is only needed if Traffic Manager profile does not already exist.
  CloningInfo({
    this.appSettingsOverrides,
    this.cloneCustomHostNames,
    this.cloneSourceControl,
    this.configureLoadBalancing,
    this.correlationId,
    this.hostingEnvironment,
    this.overwrite,
    required this.sourceWebAppId,
    this.sourceWebAppLocation,
    this.trafficManagerProfileId,
    this.trafficManagerProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingsOverrides': ?appSettingsOverrides,
      'cloneCustomHostNames': ?cloneCustomHostNames,
      'cloneSourceControl': ?cloneSourceControl,
      'configureLoadBalancing': ?configureLoadBalancing,
      'correlationId': ?correlationId,
      'hostingEnvironment': ?hostingEnvironment,
      'overwrite': ?overwrite,
      'sourceWebAppId': sourceWebAppId,
      'sourceWebAppLocation': ?sourceWebAppLocation,
      'trafficManagerProfileId': ?trafficManagerProfileId,
      'trafficManagerProfileName': ?trafficManagerProfileName,
    };
  }

  factory CloningInfo.fromMap(Map<String, dynamic> map) {
    return CloningInfo(
      appSettingsOverrides: map['appSettingsOverrides'] == null ? null : ((map['appSettingsOverrides'] as Map).cast<String, String>()).input(),
      cloneCustomHostNames: map['cloneCustomHostNames'] == null ? null : (map['cloneCustomHostNames'] as bool).input(),
      cloneSourceControl: map['cloneSourceControl'] == null ? null : (map['cloneSourceControl'] as bool).input(),
      configureLoadBalancing: map['configureLoadBalancing'] == null ? null : (map['configureLoadBalancing'] as bool).input(),
      correlationId: map['correlationId'] == null ? null : (map['correlationId'] as String).input(),
      hostingEnvironment: map['hostingEnvironment'] == null ? null : (map['hostingEnvironment'] as String).input(),
      overwrite: map['overwrite'] == null ? null : (map['overwrite'] as bool).input(),
      sourceWebAppId: (map['sourceWebAppId'] as String).input(),
      sourceWebAppLocation: map['sourceWebAppLocation'] == null ? null : (map['sourceWebAppLocation'] as String).input(),
      trafficManagerProfileId: map['trafficManagerProfileId'] == null ? null : (map['trafficManagerProfileId'] as String).input(),
      trafficManagerProfileName: map['trafficManagerProfileName'] == null ? null : (map['trafficManagerProfileName'] as String).input(),
    );
  }
}

