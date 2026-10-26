// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_endpoint_wildfire_settings_wildfire_inline_cloud_analysis_settings.dart';

class FirewallEndpointWildfireSettings {
  /// Indicates whether WildFire is enabled for the firewall endpoint.
  /// Enabling WildFire requires accepting the WildFire end-user license
  /// agreement (EULA) for the endpoint's billing project; see
  /// [Configure WildFire](https://docs.cloud.google.com/firewall/docs/configure-wildfire).
  final pulumi.Input<bool?>? enabled;
  /// Settings for WildFire inline cloud analysis.
  /// Structure is documented below.
  final pulumi.Input<FirewallEndpointWildfireSettingsWildfireInlineCloudAnalysisSettings?>? wildfireInlineCloudAnalysisSettings;
  /// The duration for which the firewall endpoint waits for a real-time
  /// signature lookup response from the WildFire cloud before taking the
  /// configured timeout action (1ms to 5000ms, default 1000ms).
  /// A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "1s".
  final pulumi.Input<String?>? wildfireRealtimeLookupDuration;
  /// The action to take when a WildFire real-time signature lookup times out.
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String?>? wildfireRealtimeLookupTimeoutAction;
  /// The WildFire region for the firewall endpoint, for example
  /// `UNITED_STATES` or `CANADA`. See
  /// [API docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.firewallEndpoints#wildfireregion)
  /// for the list of supported regions.
  final pulumi.Input<String?>? wildfireRegion;

  /// Creates a new [FirewallEndpointWildfireSettings].
  /// [enabled] Indicates whether WildFire is enabled for the firewall endpoint.
  /// [wildfireInlineCloudAnalysisSettings] Settings for WildFire inline cloud analysis.
  /// [wildfireRealtimeLookupDuration] The duration for which the firewall endpoint waits for a real-time
  /// [wildfireRealtimeLookupTimeoutAction] The action to take when a WildFire real-time signature lookup times out.
  /// [wildfireRegion] The WildFire region for the firewall endpoint, for example
  const FirewallEndpointWildfireSettings({
    this.enabled,
    this.wildfireInlineCloudAnalysisSettings,
    this.wildfireRealtimeLookupDuration,
    this.wildfireRealtimeLookupTimeoutAction,
    this.wildfireRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'wildfireInlineCloudAnalysisSettings': ?pulumi.Input.mapOptionalInputValue<FirewallEndpointWildfireSettingsWildfireInlineCloudAnalysisSettings, Map<String, dynamic>>(wildfireInlineCloudAnalysisSettings, (value) => value.toMap()),
      'wildfireRealtimeLookupDuration': ?wildfireRealtimeLookupDuration,
      'wildfireRealtimeLookupTimeoutAction': ?wildfireRealtimeLookupTimeoutAction,
      'wildfireRegion': ?wildfireRegion,
    };
  }

  factory FirewallEndpointWildfireSettings.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointWildfireSettings(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      wildfireInlineCloudAnalysisSettings: (() { final guardedValue = map['wildfireInlineCloudAnalysisSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallEndpointWildfireSettingsWildfireInlineCloudAnalysisSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wildfireRealtimeLookupDuration: (() { final guardedValue = map['wildfireRealtimeLookupDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wildfireRealtimeLookupTimeoutAction: (() { final guardedValue = map['wildfireRealtimeLookupTimeoutAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wildfireRegion: (() { final guardedValue = map['wildfireRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
