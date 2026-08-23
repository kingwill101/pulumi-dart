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
  const GetServiceBusNamespaceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServiceBusNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceBusNamespaceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
