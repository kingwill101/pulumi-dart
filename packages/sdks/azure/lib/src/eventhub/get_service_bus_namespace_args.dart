// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_service_bus_namespace_get_service_bus_namespace_args_doc}
/// Arguments for getServiceBusNamespace.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_service_bus_namespace_get_service_bus_namespace_args_doc}
class GetServiceBusNamespaceArgs {
  /// Specifies the name of the ServiceBus Namespace.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group where the ServiceBus Namespace exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServiceBusNamespaceArgs].
  /// [name] Specifies the name of the ServiceBus Namespace.
  /// [resourceGroupName] Specifies the name of the Resource Group where the ServiceBus Namespace exists.
  GetServiceBusNamespaceArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServiceBusNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceBusNamespaceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

