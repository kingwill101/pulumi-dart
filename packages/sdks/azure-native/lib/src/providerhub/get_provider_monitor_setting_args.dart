// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_provider_monitor_setting_args_doc}
/// Arguments for getProviderMonitorSetting.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_provider_monitor_setting_args_doc}
class GetProviderMonitorSettingArgs {
  /// The name of the provider monitor setting.
  final pulumi.Input<String> providerMonitorSettingName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProviderMonitorSettingArgs].
  /// [providerMonitorSettingName] The name of the provider monitor setting.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetProviderMonitorSettingArgs({
    required this.providerMonitorSettingName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerMonitorSettingName': providerMonitorSettingName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProviderMonitorSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderMonitorSettingArgs(
      providerMonitorSettingName: pulumi.Input.fromValue(map['providerMonitorSettingName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

