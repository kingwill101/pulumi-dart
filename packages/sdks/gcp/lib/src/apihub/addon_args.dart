// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_config.dart';

/// {@template pulumi_apihub_addon_addon_args_doc}
/// The set of arguments for Addon.
/// {@endtemplate}
/// {@macro pulumi_apihub_addon_addon_args_doc}
class AddonArgs {
  /// The ID of the addon.
  final pulumi.Input<String> addonId;
  /// The configuration of the addon.
  /// Structure is documented below.
  final pulumi.Input<AddonConfig> config;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [AddonArgs].
  /// [addonId] The ID of the addon.
  /// [config] The configuration of the addon.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const AddonArgs({
    required this.addonId,
    required this.config,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonId': addonId,
      'config': pulumi.Input.mapInputValue<AddonConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'location': location,
      'project': ?project,
    };
  }

  factory AddonArgs.fromMap(Map<String, dynamic> map) {
    return AddonArgs(
      addonId: pulumi.Input.fromValue(map['addonId'] as String),
      config: pulumi.Input.fromValue(AddonConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
