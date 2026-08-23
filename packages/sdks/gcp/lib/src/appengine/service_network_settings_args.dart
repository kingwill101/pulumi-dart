// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_settings_network_settings.dart';

/// {@template pulumi_appengine_service_network_settings_service_network_settings_args_doc}
/// The set of arguments for ServiceNetworkSettings.
/// {@endtemplate}
/// {@macro pulumi_appengine_service_network_settings_service_network_settings_args_doc}
class ServiceNetworkSettingsArgs {
  /// Ingress settings for this service. Will apply to all versions.
  /// Structure is documented below.
  final pulumi.Input<ServiceNetworkSettingsNetworkSettings> networkSettings;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the service these settings apply to.
  final pulumi.Input<String> service;

  /// Creates a new [ServiceNetworkSettingsArgs].
  /// [networkSettings] Ingress settings for this service. Will apply to all versions.
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The name of the service these settings apply to.
  const ServiceNetworkSettingsArgs({
    required this.networkSettings,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSettings': pulumi.Input.mapInputValue<ServiceNetworkSettingsNetworkSettings, Map<String, dynamic>>(networkSettings, (value) => value.toMap()),
      'project': ?project,
      'service': service,
    };
  }

  factory ServiceNetworkSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkSettingsArgs(
      networkSettings: pulumi.Input.fromValue(ServiceNetworkSettingsNetworkSettings.fromMap((map['networkSettings']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
