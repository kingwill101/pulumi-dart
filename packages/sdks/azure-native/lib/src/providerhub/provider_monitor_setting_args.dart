// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_provider_monitor_setting_args_doc}
/// The set of arguments for ProviderMonitorSetting.
/// {@endtemplate}
/// {@macro pulumi_providerhub_provider_monitor_setting_args_doc}
class ProviderMonitorSettingArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the provider monitor setting.
  final pulumi.Input<String>? providerMonitorSettingName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProviderMonitorSettingArgs].
  /// [location] The geo-location where the resource lives
  /// [providerMonitorSettingName] The name of the provider monitor setting.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ProviderMonitorSettingArgs({
    this.location,
    this.providerMonitorSettingName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'providerMonitorSettingName': ?providerMonitorSettingName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProviderMonitorSettingArgs.fromMap(Map<String, dynamic> map) {
    return ProviderMonitorSettingArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerMonitorSettingName: (() { final guardedValue = map['providerMonitorSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

