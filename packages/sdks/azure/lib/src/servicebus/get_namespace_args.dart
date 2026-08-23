// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_namespace_get_namespace_args_doc}
/// Arguments for getNamespace.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_namespace_get_namespace_args_doc}
class GetNamespaceArgs {
  /// Specifies the name of the ServiceBus Namespace.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group where the ServiceBus Namespace exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceArgs].
  /// [name] Specifies the name of the ServiceBus Namespace.
  /// [resourceGroupName] Specifies the name of the Resource Group where the ServiceBus Namespace exists.
  const GetNamespaceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
