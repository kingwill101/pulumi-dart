// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_settings_network_settings.dart';

/// Input properties used for looking up and filtering ServiceNetworkSettings resources.
class ServiceNetworkSettingsState {
  /// Ingress settings for this service. Will apply to all versions.
  /// Structure is documented below.
  final pulumi.Input<ServiceNetworkSettingsNetworkSettings>? networkSettings;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the service these settings apply to.
  final pulumi.Input<String>? service;

  /// Creates a new [ServiceNetworkSettingsState].
  /// [networkSettings] Ingress settings for this service. Will apply to all versions.
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The name of the service these settings apply to.
  const ServiceNetworkSettingsState({
    this.networkSettings,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSettings': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkSettingsNetworkSettings, Map<String, dynamic>>(networkSettings, (value) => value.toMap()),
      'project': ?project,
      'service': ?service,
    };
  }

  factory ServiceNetworkSettingsState.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkSettingsState(
      networkSettings: (() { final guardedValue = map['networkSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceNetworkSettingsNetworkSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
