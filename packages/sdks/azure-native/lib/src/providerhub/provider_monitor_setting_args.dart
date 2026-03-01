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
    pulumi.Output<String>? location,
    pulumi.Output<String>? providerMonitorSettingName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      providerMonitorSettingName = pulumi.Input.asOptionalInput<String>(providerMonitorSettingName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      providerMonitorSettingName: map['providerMonitorSettingName'] == null ? null : pulumi.Output.create<String>(map['providerMonitorSettingName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

