// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_provider_instance_args_doc}
/// The set of arguments for ProviderInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_provider_instance_args_doc}
class ProviderInstanceArgs {
  /// Name of the SAP monitor resource.
  final pulumi.Input<String> monitorName;
  /// Name of the provider instance.
  final pulumi.Input<String?>? providerInstanceName;
  /// Defines the provider specific properties.
  final pulumi.Input<dynamic>? providerSettings;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ProviderInstanceArgs].
  /// [monitorName] Name of the SAP monitor resource.
  /// [providerInstanceName] Name of the provider instance.
  /// [providerSettings] Defines the provider specific properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ProviderInstanceArgs({
    required this.monitorName,
    this.providerInstanceName,
    this.providerSettings,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'providerInstanceName': ?providerInstanceName,
      'providerSettings': ?providerSettings,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ProviderInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ProviderInstanceArgs(
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      providerInstanceName: (() { final guardedValue = map['providerInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerSettings: (() { final guardedValue = map['providerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
