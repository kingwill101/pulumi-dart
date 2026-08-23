// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information needed for cloning operation.
class CloningInfo {
  /// Application setting overrides for cloned app. If specified, these settings override the settings cloned
  /// from source app. Otherwise, application settings from source app are retained.
  final pulumi.Input<Map<String, String>>? appSettingsOverrides;
  /// &lt;code&gt;true&lt;/code&gt; to clone custom hostnames from source app; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? cloneCustomHostNames;
  /// &lt;code&gt;true&lt;/code&gt; to clone source control from source app; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? cloneSourceControl;
  /// &lt;code&gt;true&lt;/code&gt; to configure load balancing for source and destination app.
  final pulumi.Input<bool>? configureLoadBalancing;
  /// Correlation ID of cloning operation. This ID ties multiple cloning operations
  /// together to use the same snapshot.
  final pulumi.Input<String>? correlationId;
  /// App Service Environment.
  final pulumi.Input<String>? hostingEnvironment;
  /// &lt;code&gt;true&lt;/code&gt; to overwrite destination app; otherwise, &lt;code&gt;false&lt;/code&gt;.
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
  /// [cloneCustomHostNames] &lt;code&gt;true&lt;/code&gt; to clone custom hostnames from source app; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [cloneSourceControl] &lt;code&gt;true&lt;/code&gt; to clone source control from source app; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [configureLoadBalancing] &lt;code&gt;true&lt;/code&gt; to configure load balancing for source and destination app.
  /// [correlationId] Correlation ID of cloning operation. This ID ties multiple cloning operations
  /// [hostingEnvironment] App Service Environment.
  /// [overwrite] &lt;code&gt;true&lt;/code&gt; to overwrite destination app; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [sourceWebAppId] ARM resource ID of the source app. App resource ID is of the form
  /// [sourceWebAppLocation] Location of source app ex: West US or North Europe
  /// [trafficManagerProfileId] ARM resource ID of the Traffic Manager profile to use, if it exists. Traffic Manager resource ID is of the form
  /// [trafficManagerProfileName] Name of Traffic Manager profile to create. This is only needed if Traffic Manager profile does not already exist.
  const CloningInfo({
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
      appSettingsOverrides: (() { final guardedValue = map['appSettingsOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cloneCustomHostNames: (() { final guardedValue = map['cloneCustomHostNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cloneSourceControl: (() { final guardedValue = map['cloneSourceControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configureLoadBalancing: (() { final guardedValue = map['configureLoadBalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      correlationId: (() { final guardedValue = map['correlationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostingEnvironment: (() { final guardedValue = map['hostingEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overwrite: (() { final guardedValue = map['overwrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceWebAppId: pulumi.Input.fromValue(map['sourceWebAppId'] as String),
      sourceWebAppLocation: (() { final guardedValue = map['sourceWebAppLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficManagerProfileId: (() { final guardedValue = map['trafficManagerProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficManagerProfileName: (() { final guardedValue = map['trafficManagerProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
