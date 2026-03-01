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
    required pulumi.Output<String> monitorName,
    required pulumi.Output<String> providerInstanceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      monitorName = pulumi.Input.asInput<String>(monitorName),
      providerInstanceName = pulumi.Input.asInput<String>(providerInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'providerInstanceName': providerInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProviderInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderInstanceArgs(
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      providerInstanceName: pulumi.Output.create<String>(map['providerInstanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

