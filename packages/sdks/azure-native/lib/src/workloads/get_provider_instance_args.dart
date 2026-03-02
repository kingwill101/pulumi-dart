// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_provider_instance_args_doc}
/// Arguments for getProviderInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_provider_instance_args_doc}
class GetProviderInstanceArgs {
  /// Name of the SAP monitor resource.
  final pulumi.Input<String> monitorName;
  /// Name of the provider instance.
  final pulumi.Input<String> providerInstanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProviderInstanceArgs].
  /// [monitorName] Name of the SAP monitor resource.
  /// [providerInstanceName] Name of the provider instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProviderInstanceArgs({
    required this.monitorName,
    required this.providerInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'providerInstanceName': providerInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProviderInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderInstanceArgs(
      monitorName: (map['monitorName'] as String).input(),
      providerInstanceName: (map['providerInstanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

